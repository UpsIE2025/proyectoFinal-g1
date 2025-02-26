FROM golang:1.23.4

WORKDIR /postpb

COPY ./postpb ./

WORKDIR /app

COPY ./notiservice/serviceAccountKey.json ./
COPY ./notiservice/go.mod ./
COPY ./notiservice/go.sum ./
RUN go mod download

COPY ./notiservice/*.go ./
RUN go build -o app .

CMD [ "./app" ]