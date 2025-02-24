package main

import (
	"encoding/json"
	"errors"
	"fmt"
	"log/slog"

	"github.com/IBM/sarama"
	"gorm.io/gorm"
)

type fcmHandler struct {
	db *gorm.DB
}

func newFCMHandler(db *gorm.DB) (*fcmHandler, error) {
	return &fcmHandler{db: db}, nil
}

func (h *fcmHandler) HandleMessage(msg *sarama.ConsumerMessage) {
	var ev addOrRemoveFcmTokenEvent
	err := json.Unmarshal(msg.Value, &ev)
	if err != nil {
		slog.Error(err.Error())
		return
	}
	if ev.AddToken != "" {
		err := h.db.Where("token = ? AND user_id = ?", ev.AddToken, ev.UserID).First(&fcmToken{}).Error
		if errors.Is(err, gorm.ErrRecordNotFound) {
			err := h.db.Create(&fcmToken{UserID: ev.UserID, Token: ev.AddToken}).Error
			if err != nil {
				slog.Error(err.Error())
			} else {
				slog.Info(fmt.Sprintf("Added FCM token for user %s", ev.UserID))
			}
		}
	}
	if ev.RemoveToken != "" {
		err := h.db.Where("token = ? AND user_id = ?", ev.RemoveToken, ev.UserID).Delete(&fcmToken{}).Error
		if err != nil {
			slog.Error(err.Error())
		} else {
			slog.Info(fmt.Sprintf("Removed FCM token for user %s", ev.UserID))
		}
	}
}
