package dal

import "buycar/biz/dal/db"

func Init() error {
	err := db.Init()
	if err != nil {
		return err
	}
	return nil
}
