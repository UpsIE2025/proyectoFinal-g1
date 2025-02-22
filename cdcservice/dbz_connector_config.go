package main

import (
	"bytes"
	"fmt"
	"io"
	"log/slog"
	"net/http"
	"os"
	"time"
)

func configureDbzConnector(dbzAddr string) {
	slog.Info("Configuring Debezium Postgres connector...")
	client := http.Client{Timeout: 5 * time.Second}
	data, err := os.ReadFile("./dbz-postgres-connector.json")
	if err != nil {
		panic(err)
	}
	resp, err := client.Post(fmt.Sprintf("http://%s/connectors", dbzAddr), "application/json", bytes.NewReader(data))
	if err != nil {
		panic(err)
	}
	defer resp.Body.Close()
	respData, _ := io.ReadAll(resp.Body)
	slog.Info(string(respData))
}
