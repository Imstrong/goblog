package main

import (
	"net/http"
	"fmt"
	control "goblog/backstage/src/test_control"
)

func main() {
	fmt.Print("serveice started, listening at 80\n")
	http.HandleFunc("/", control.Route)
	http.ListenAndServe(":80", http.DefaultServeMux)
}