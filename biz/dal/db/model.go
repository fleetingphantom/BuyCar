package db

import (
	"time"
)

type User struct {
	UserId    int64
	UserName  string
	Password  string
	IsAdmin   bool
	Score     int64
	CreatedAt time.Time
	UpdatedAt time.Time
}

func (User) ToModuleStruct() {
}
