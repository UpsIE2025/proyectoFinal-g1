package main

import (
	"encoding/json"
	"log/slog"

	"github.com/IBM/sarama"
	"gorm.io/gorm"
)

func handleEvent(replicaDB *gorm.DB, msg *sarama.ConsumerMessage) {
	data := eventData{}
	err := json.Unmarshal(msg.Value, &data)
	if err != nil {
		slog.Error(err.Error())
		return
	}
	switch data.Payload.Op {
	case "c":
		slog.Info("Create event")
		err := replicaDB.Create(data.Payload.After).Error
		if err != nil {
			slog.Error(err.Error())
			return
		}
		slog.Info("Create event succeed!")
	case "u":
		slog.Info("Update event")
		err := replicaDB.Model(&postModel{}).Where("id = ?", data.Payload.After.ID).
			Updates(data.Payload.After).Error
		if err != nil {
			slog.Error(err.Error())
			return
		}
		slog.Info("Update event succeed!")
	case "d":
		slog.Info("Delete event")
		err := replicaDB.Delete(&postModel{ID: data.Payload.Before.ID}).Error
		if err != nil {
			slog.Error(err.Error())
			return
		}
		slog.Info("Delete event succeed!")
	}
}
