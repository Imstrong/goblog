package control

import (
	"net/http"
	"os"
	"log"
	"fmt"
	"strings"
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
		break
	case "/file/edit":
		FileEdit(w,r)
	}
	if err != nil && os.IsNotExist(err) {
		log.Printf("no napping found for path %s\n", ctrlName)
	}
}
func ResolveStatic(w http.ResponseWriter,r *http.Request,uri string) {
	fmt.Printf("%s\n", uri[1:])
	//处理静态资源版本号参数：fontawesome-webfont.ttf?v=4.3.0
	paramIndex:=strings.Index(uri,"?")
	var file *os.File
	var err error
	if paramIndex!=-1{
		uri=uri[1:paramIndex]
		file, err = os.Open(uri)
	}else {
		uri=uri[1:]
		file, err = os.Open(uri)
	}
	defer file.Close()

	//w.WriteHeader("Cache-Control","max-age=3650000")
	http.ServeFile(w,r,uri)
	if err != nil && os.IsNotExist(err) {
		fmt.Printf("File not found: %s\n", uri)
	}
}