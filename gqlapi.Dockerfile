FROM golang:1.23.4

WORKDIR /postpb

COPY ./postpb ./

WORKDIR /app

COPY ./gqlapi/go.mod ./
COPY ./gqlapi/go.sum ./
RUN go mod download

COPY ./gqlapi/internal ./internal
COPY ./gqlapi/*.go ./
RUN go build -o app .

CMD [ "./app" ]