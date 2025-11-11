package service

import (
	"buycar/biz/dal/db"
	"buycar/biz/model/user"
	"context"

	"github.com/cloudwego/hertz/pkg/app"
)

type UserService struct {
	ctx context.Context
	c   *app.RequestContext
}

func NewUserService(ctx context.Context, c *app.RequestContext) *UserService {
	return &UserService{ctx: ctx, c: c}
}

func (s *UserService) Register(req *user.RegisterReq) error {
	err := db.CreateUser(s.ctx, req.UserName, req.Password)
	if err != nil {
		return err
	}
	return nil
}
