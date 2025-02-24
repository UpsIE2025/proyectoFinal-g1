package main

import (
	"context"
	"log/slog"
	"os"

	firebase "firebase.google.com/go/v4"
	"firebase.google.com/go/v4/messaging"
	"google.golang.org/api/option"
)

func firebaseCloudMessagingInit() (*messaging.Client, error) {
	opts := option.WithCredentialsFile(os.Getenv("FIREBASE_CONFIG"))
	fireApp, err := firebase.NewApp(context.Background(), nil, opts)
	if err != nil {
		return nil, err
	}
	fcmClient, err := fireApp.Messaging(context.Background())
	if err != nil {
		return nil, err
	}
	return fcmClient, nil
}

func firebaseSendNotification(client *messaging.Client, ms []*messaging.MulticastMessage) []string {
	slog.Info("Sending FCM notifications...")
	invalidTokens := make([]string, 0, 2)
	for _, m := range ms {
		if len(m.Tokens) == 0 {
			continue
		}
		resp, err := client.SendEachForMulticast(context.Background(), m)
		if err != nil {
			slog.Error(err.Error())
			continue
		}
		for i, r := range resp.Responses {
			if messaging.IsInvalidArgument(r.Error) || messaging.IsUnregistered(r.Error) {
				invalidTokens = append(invalidTokens, m.Tokens[i])
			}
		}
	}
	return invalidTokens
}
