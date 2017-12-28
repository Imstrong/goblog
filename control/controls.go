package control

import (
	"net/http"
	"os"
	"log"
	"text/template"
)

func Login(w http.ResponseWriter, r *http.Request) {
	if r.Method == "GET" {
		t, err := template.ParseFiles("views/login.tpl")
		if err != nil {
			if os.IsNotExist(err) {
				log.Printf("mapping not found : %v\n", err)
			}
		}
		t.Execute(w, nil)
		return
	}
	if r.Method == "POST" {
	}
}
func Index(w http.ResponseWriter, r *http.Request) {
	t, err := template.ParseFiles("views/index.tpl")
	if err != nil {
		if os.IsNotExist(err) {
			log.Printf("mapping not found : %v\n", err)
		}
	}
	t.Execute(w, nil)
}
func About(w http.ResponseWriter, r *http.Request) {
	t, err := template.ParseFiles("views/about.tpl")
	if err != nil {
		if os.IsNotExist(err) {
			log.Printf("mapping not found : %v\n", err)
		}
	}
	t.Execute(w, nil)
}


