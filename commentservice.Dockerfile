FROM golang:1.23.4

WORKDIR /app

COPY ./commentservice/go.mod ./
COPY ./commentservice/go.sum ./
RUN go mod download

COPY ./commentservice/*.go ./
RUN go build -o app .

CMD [ "./app" ]