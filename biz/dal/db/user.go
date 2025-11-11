package db

import (
	"buycar/pkg/errno"
	"context"
	"errors"

	"gorm.io/gorm"
)

func CreateUser(ctx context.Context, username, password string) error {
	user := &User{
		UserName: username,
		Password: password,
	}

	err := DB.WithContext(ctx).Create(user).Error
	if err != nil {
		if errors.Is(err, gorm.ErrRecordNotFound) {
			return errno.ServiceUserExist
		}
		return errno.NewErrNo(errno.InternalDatabaseErrorCode, "创建用户失败: "+err.Error())
	}
	return nil

}
