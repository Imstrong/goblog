package main

import (
	"net/http"
	"log"
	"html/template"
	"fmt"
	"strings"
)

func main() {
	//http.HandleFunc("/static/*",resolveStatic)
	http.HandleFunc("/",route)
	fmt.Print("serveice started, listening at 9090")
	err := http.ListenAndServe(":9090",nil)
	if err != nil {
		log.Fatal("ListenAndServe",err)
	}
}
func route(writer http.ResponseWriter,request *http.Request) {
	uri := request.RequestURI
	log.Print(uri)
	var t *template.Template
	if uri=="/" {
		t, _ = template.ParseFiles("views/index.tpl")
	}else{
		if strings.HasPrefix(uri,"/static/") {
			t,_ = template.ParseFiles(uri)
		}
	}
	if t != nil {
		t.Execute(writer, nil)
	}else {
		fmt.Printf("no mapping found for path: %s\n",uri)
	}
}