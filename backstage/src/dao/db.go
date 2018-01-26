package dao

import (
	"database/sql"
	"goblog/backstage/src/conf"
	_ "github.com/go-sql-driver/mysql"
)

type DataSource struct {
	db sql.DB
}

func (ds *DataSource) Init() {
	config := &conf.Configuration{Properties: make(map[string]string)}
	err := config.Read("src/conf/app.conf")
	if err != nil {
		panic(err)
	}
	db, err := sql.Open(config.Properties["driver"], config.Properties["user"]+":"+config.Properties["passwd"]+"@"+config.Properties["url"])
	if err != nil || db==nil{
		panic(err)
	}
	ds.db = *db
}
func (ds *DataSource) GetConn() *sql.DB {
	return &ds.db
}
