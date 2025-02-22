package main

import (
	"fmt"
	"os"

	"gorm.io/driver/mysql"
	"gorm.io/gorm"
	"gorm.io/gorm/logger"
)

func replicaDBInit() (*gorm.DB, error) {
	dsn := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s?charset=utf8mb4&parseTime=True&loc=Local",
		os.Getenv("MARIA_DB_USER"), os.Getenv("MARIA_DB_PASS"),
		os.Getenv("MARIA_DB_HOST"), os.Getenv("MARIA_DB_PORT"),
		os.Getenv("MARIA_DB_NAME"),
	)
	db, err := gorm.Open(mysql.Open(dsn), &gorm.Config{
		Logger: logger.Discard,
	})
	if err != nil {
		return nil, err
	}
	db.AutoMigrate(&postModel{})
	return db, nil
}
