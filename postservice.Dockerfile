FROM golang:1.23.4

WORKDIR /postpb

COPY ./postpb ./

WORKDIR /app

COPY ./postservice/go.mod ./
COPY ./postservice/go.sum ./
RUN go mod download

COPY ./postservice/*.go ./
RUN go build -o app .

CMD [ "./app" ]