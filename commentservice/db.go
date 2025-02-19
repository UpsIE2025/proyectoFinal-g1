package main

import (
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
	"gorm.io/gorm/logger"
)

func dbInit() (*gorm.DB, error) {
	dsn := "comment_user:comment_hardpass@tcp(localhost:3306)/comments?charset=utf8mb4&parseTime=True&loc=Local"
	db, err := gorm.Open(mysql.Open(dsn), &gorm.Config{
		Logger: logger.Discard,
	})
	if err != nil {
		return nil, err
	}
	db.AutoMigrate(&Comment{})
	return db, nil
}
