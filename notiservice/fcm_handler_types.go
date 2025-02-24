package main

type addOrRemoveFcmTokenEvent struct {
	UserID      string `json:"user_id"`
	AddToken    string `json:"add_token"`
	RemoveToken string `json:"remove_token"`
}

type fcmToken struct {
	ID     int    `json:"id" gorm:"unique;primaryKey;autoIncrement"`
	UserID string `json:"user_id,omitempty"`
	Token  string `json:"token,omitempty"`
}
