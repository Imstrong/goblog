package main

import (
	"net/http"
	"fmt"
	"goblog/backstage/src/control"
)

func main() {
	fmt.Print("serveice started, listening at 80\n")
	http.HandleFunc("/", control.Route)
	http.ListenAndServe(":80", http.DefaultServeMux)
}