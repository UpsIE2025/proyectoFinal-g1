package main

import (
	"gorm.io/driver/postgres"
	"gorm.io/gorm"
	"gorm.io/gorm/logger"
)

func dbInit() (*gorm.DB, error) {
	dsn := "host=localhost user=post_user password=post_hardpass dbname=posts port=5432 sslmode=disable TimeZone=America/Bogota"
	db, err := gorm.Open(postgres.Open(dsn), &gorm.Config{
		Logger: logger.Discard,
	})
	if err != nil {
		return nil, err
	}
	db.AutoMigrate(&Post{})
	return db, nil
}
