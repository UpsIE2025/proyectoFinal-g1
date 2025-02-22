package main

import "time"

type postModel struct {
	ID        int       `json:"id" gorm:"unique;primaryKey"`
	CreatedAt time.Time `json:"created_at"`
	UpdatedAt time.Time `json:"updated_at"`
	Title     string    `json:"title"`
	Content   string    `json:"content"`
	AuthorID  string    `json:"author_id"`
}

type eventData struct {
	Schema struct {
		Type   string `json:"type"`
		Fields []struct {
			Type   string `json:"type"`
			Fields []struct {
				Type     string `json:"type"`
				Optional bool   `json:"optional"`
				Field    string `json:"field"`
			} `json:"fields,omitempty"`
			Optional bool   `json:"optional"`
			Name     string `json:"name,omitempty"`
			Field    string `json:"field"`
		} `json:"fields"`
		Optional bool   `json:"optional"`
		Name     string `json:"name"`
		Version  int    `json:"version"`
	} `json:"schema"`
	Payload struct {
		Before *postModel `json:"before"`
		After  *postModel `json:"after"`
		Source struct {
			Version   string `json:"version"`
			Connector string `json:"connector"`
			Name      string `json:"name"`
			TsMs      int64  `json:"ts_ms"`
			Snapshot  string `json:"snapshot"`
			Db        string `json:"db"`
			Sequence  string `json:"sequence"`
			TsUs      int64  `json:"ts_us"`
			TsNs      int64  `json:"ts_ns"`
			Schema    string `json:"schema"`
			Table     string `json:"table"`
			TxID      int    `json:"txId"`
			Lsn       int    `json:"lsn"`
			Xmin      any    `json:"xmin"`
		} `json:"source"`
		Transaction any    `json:"transaction"`
		Op          string `json:"op"`
		TsMs        int64  `json:"ts_ms"`
		TsUs        int64  `json:"ts_us"`
		TsNs        int64  `json:"ts_ns"`
	} `json:"payload"`
}
