package main

import (
	"net/http"
	"log"
	"fmt"
	"strings"
	"goblog/control"
)

func main() {
	fmt.Print("serveice started, listening at 80\n")
	http.HandleFunc("/", route)
	err := http.ListenAndServe(":80", http.DefaultServeMux)
	if err != nil {
		log.Fatal("ListenAndServe", err)
	}
}
func route(writer http.ResponseWriter, request *http.Request) {
	uri := request.RequestURI
	log.Printf("Request URL : %s\n", uri)
	//以/static/开头的为静态资源请求，直接使用其路径获取文件并写出为流
	if strings.HasPrefix(uri, "/static/") || uri == "/favicon.ico" {
		control.ResolveStatic(uri)
		http.ServeFile(writer, request, uri[1:])
	} else {
		control.ResolveControl(writer,request, uri)
	}
}


