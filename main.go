package main

import (
	"net/http"
	"log"
	"fmt"
	"strings"
	"os"
	"html/template"
	"os/exec"
)

func main() {
	fmt.Print("serveice started, listening at 80\n")
	http.HandleFunc("/", route)
	err := http.ListenAndServe(":80", http.DefaultServeMux)
	if err != nil {
		log.Fatal("ListenAndServe", err)
	}else{
		cmd := exec.Command("cmd /C start http://localhost:80")
		err := cmd.Start()
		if err!=nil{
			fmt.Print(err)
		}
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
		t := resolveControl(uri)
		if t != nil {
			t.Execute(writer, nil)
		} else {
			fmt.Printf("no mapping found for path: %s\n", uri)
		}
	}
}

func resolveControl(ctrlName string) (*template.Template) {
	var t *template.Template
	var err error
	switch ctrlName {
	case "", "/", "/index":
		t, err = template.ParseFiles(index())
		break
	case "/about":
		t, err = template.ParseFiles(about())
		break
	case "/login":
		t, err = template.ParseFiles(login())
		break
	default:
		t, err = nil, nil
		break
	}
	if err != nil && os.IsNotExist(err) {
		log.Printf("no napping found for path %s\n", ctrlName)
		t = nil
	}
	return t
}
func login() string {
	return "views/login.tpl"
}
func index() string {
	return "views/index.tpl"
}
func about() string {
	return "views/about.tpl"
}
func resolveStatic(uri string) {
	fmt.Printf("%s\n", uri[1:])
	file, err := os.Open(uri[1:])
	defer file.Close()

	if err != nil && os.IsNotExist(err) {
		fmt.Printf("File not found: %s\n", uri)
	}
}
