package base

import (
	"net/http"
	"html/template"
)
type Controller struct{}
func (c Controller) Get (w http.ResponseWriter,r *http.Request){
	template.ParseFiles("views/index.tpl")
}
