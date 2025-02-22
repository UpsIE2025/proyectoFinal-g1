FROM golang:1.23.4

WORKDIR /app

COPY ./cdcservice/dbz-postgres-connector.json ./
COPY ./cdcservice/go.mod ./
COPY ./cdcservice/go.sum ./
RUN go mod download

COPY ./cdcservice/*.go ./
RUN go build -o app .

CMD [ "./app" ]