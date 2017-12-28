package main

import (
	"net/http"
	"log"
	"fmt"
	"strings"
	"os"
	"html/template"
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
		resolveStatic(uri)
		http.ServeFile(writer, request, uri[1:])
	} else {
		resolveControl(writer,uri)
	}
}

func resolveControl(w http.ResponseWriter,ctrlName string){
	var err error
	switch ctrlName {
	case "", "/", "/index":
		index(w,r)
		break
	case "/about":
		about(w,r)
		break
	case "/login":
		login(w,r)
		break
	default:
		break
	}
	if err != nil && os.IsNotExist(err) {
		log.Printf("no napping found for path %s\n", ctrlName)
	}
}
func login(w http.ResponseWriter,r *http.Request) {
	if r.Method=="GET" {
		t, err := template.ParseFiles("views/login.tpl")
		if err != nil {
			if os.IsNotExist(err) {
				log.Printf("mapping not found : %v\n", err)
			}
		}
		t.Execute(w, nil)
		return
	}
	if r.Method=="POST" {

	}
}
func index(w http.ResponseWriter) {
	t,err:=template.ParseFiles("views/index.tpl")
	if err != nil {
		if os.IsNotExist(err) {
			log.Printf("mapping not found : %v\n",err)
		}
	}
	t.Execute(w,nil)
}
func about(w http.ResponseWriter) {
	t,err:=template.ParseFiles("views/about.tpl")
	if err != nil {
		if os.IsNotExist(err) {
			log.Printf("mapping not found : %v\n",err)
		}
	}
	t.Execute(w,nil)
}
func resolveStatic(uri string) {
	fmt.Printf("%s\n", uri[1:])
	file, err := os.Open(uri[1:])
	defer file.Close()

	if err != nil && os.IsNotExist(err) {
		fmt.Printf("File not found: %s\n", uri)
	}
}
