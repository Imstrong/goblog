package control

import (
	"net/http"
	"os"
	"log"
	"fmt"
)

func ResolveControl(w http.ResponseWriter,r *http.Request, ctrlName string) {
	var err error
	switch ctrlName {
	case "", "/", "/index":
		Index(w, r)
		break
	case "/about":
		About(w, r)
		break
	case "/login":
		Login(w, r)
		break
	case "/file":
		File(w,r)
	}
	if err != nil && os.IsNotExist(err) {
		log.Printf("no napping found for path %s\n", ctrlName)
	}
}
func ResolveStatic(uri string) {
	fmt.Printf("%s\n", uri[1:])
	file, err := os.Open(uri[1:])
	defer file.Close()

	if err != nil && os.IsNotExist(err) {
		fmt.Printf("File not found: %s\n", uri)
	}
}