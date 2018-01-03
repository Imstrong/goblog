package main

import (
	"net/http"
	"log"
	"fmt"
	"goblog/control"
)

func main() {
	fmt.Print("serveice started, listening at 80\n")
	http.HandleFunc("/", control.Route)
	err := http.ListenAndServe(":80", http.DefaultServeMux)
	if err != nil {
		log.Fatal("ListenAndServe", err)
	}
}



