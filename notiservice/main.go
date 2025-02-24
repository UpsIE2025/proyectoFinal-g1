package main

import (
	"fmt"
	"log/slog"
	"msoft/g1/postpb"
	"os"
	"os/signal"
	"sync"
	"syscall"

	"github.com/IBM/sarama"
	"github.com/joho/godotenv"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
)

const newCommentChannel = "newComment"
const addOrRemoveFCMTokenChannel = "addOrRemoveFcmToken"

func main() {
	godotenv.Load()
	kafkaAddr := fmt.Sprintf("%s:%s", os.Getenv("KAFKA_HOST"), os.Getenv("KAFKA_PORT"))

	fcmClient, err := firebaseCloudMessagingInit()
	if err != nil {
		panic(err)
	}

	db, err := dbInit()
	if err != nil {
		panic(err)
	}

	conn, err := grpc.NewClient(fmt.Sprintf("%s:%s",
		os.Getenv("POST_SERVICE_HOST"), os.Getenv("POST_SERVICE_PORT")),
		grpc.WithTransportCredentials(insecure.NewCredentials()))
	if err != nil {
		panic(err)
	}
	defer conn.Close()

	chandler, err := newCommentHandler(db, postpb.NewPostGRPCClient(conn), fcmClient)
	if err != nil {
		panic(err)
	}

	fhandler, err := newFCMHandler(db)
	if err != nil {
		panic(err)
	}

	config := sarama.NewConfig()
	config.Consumer.Return.Errors = true

	consumer, err := sarama.NewConsumer([]string{kafkaAddr}, config)
	if err != nil {
		panic(err)
	}
	defer consumer.Close()

	pNewComment, err := consumer.ConsumePartition(newCommentChannel, 0, sarama.OffsetNewest)
	if err != nil {
		panic(err)
	}
	defer pNewComment.Close()

	pFCMToken, err := consumer.ConsumePartition(addOrRemoveFCMTokenChannel, 0, sarama.OffsetNewest)
	if err != nil {
		panic(err)
	}
	defer pFCMToken.Close()

	wg := &sync.WaitGroup{}
	wg.Add(2)

	slog.Info("Waiting for events...")
	listenPartition(wg, pNewComment, chandler.HandleMessage, "NewComment")
	listenPartition(wg, pFCMToken, fhandler.HandleMessage, "FCMToken")

	wg.Wait()
	slog.Info("Finished!")
}

func listenPartition(wg *sync.WaitGroup, partition sarama.PartitionConsumer, handleEvent func(m *sarama.ConsumerMessage), name string) {
	sigchan := make(chan os.Signal, 1)
	signal.Notify(sigchan, syscall.SIGINT, syscall.SIGTERM)
	go func() {
		defer wg.Done()
		for {
			select {
			case err := <-partition.Errors():
				slog.Error(err.Error())
			case msg := <-partition.Messages():
				handleEvent(msg)
			case <-sigchan:
				slog.Info(fmt.Sprintf("Gracefully shutdown this partition %s", name))
				return
			}
		}
	}()
}
