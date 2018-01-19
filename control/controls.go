package control

import (
	"net/http"
	"log"
	"text/template"
	"fmt"
	"errors"
	"goblog/session"
	"goblog/model"
	"strings"
	"goblog/dao"
	//_ "github.com/go-sql-driver/mysql"
	"database/sql"
)

var sessionManager *session.Manager
var conn *sql.DB

func init() {
	dataSource := &dao.DataSource{}
	dataSource.Init()
	conn = dataSource.GetConn()
	if conn == nil {
		errors.New("data source connection failed")
	}
	sessionManager = session.NewManager()
}
func Route(writer http.ResponseWriter, request *http.Request) {
	uri := request.RequestURI
	log.Printf("Request URL : %s\n", uri)
	//以/static/开头的为静态资源请求，直接使用其路径获取文件并写出为流
	if strings.HasPrefix(uri, "/static/") || uri == "/favicon.ico" {
		ResolveStatic(writer,request,uri)
		//http.ServeFile(writer, request, uri[1:])
	} else {
		ResolveControl(writer, request, uri)
	}
}
func Login(w http.ResponseWriter, r *http.Request) {
	if r.Method == "POST" {
		r.ParseForm()
		//从cookie池获取gosessionid，如果不存在，报错errors.New("http: named cookie not present")
		cookie, err := r.Cookie(session.COOKIESESSIONIDNAME)

		//如果cookie为空
		if err != nil || cookie.Value == "" {
			//获得表单数据
			username := r.Form.Get("username")
			password := r.Form.Get("password")

			//数据库连接
			//db, e := sql.Open("mysql", "root:123456@tcp(localhost)/blog?charset=utf8")
			//defer conn.Close()

			u := model.User{}
			//数据库查询
			row := conn.QueryRow("select * from user where username=? and password=?", username, password)
			err := row.Scan(&u.Id, &u.Username, &u.Password, &u.Nick_name)
			if err != nil {
				t, err := template.ParseFiles("views/login.tpl")
				if err != nil {
					w.Write([]byte("login page not found!\n"))
				}
				t.Execute(w, model.Result{Data: "用户名或密码错误"})
				return
			}
			//如果sessionid为空
			s := sessionManager.NewSession()
			s.Set("username", u.Nick_name)
			//sessionManager.SessionPool()[s.SID()]=s
			//创建cookie
			cookie = &http.Cookie{Name: session.COOKIESESSIONIDNAME, Value: s.SID()}
			http.SetCookie(w, cookie)
			//重定向到首页
			http.Redirect(w, r, "/index", 302)
		} else {
			//cookie不为空
			s := sessionManager.GetSession(cookie.Value)
			if s != nil {
				username := s.Get("username")
				t, err := template.ParseFiles("views/index.tpl")
				if err != nil {
					w.Write([]byte("no file mapped for path:" + r.RequestURI))
					return
				}
				t.Execute(w, username)
				return
			}
			username := r.Form.Get("username")
			password := r.Form.Get("password")

			//数据库连接
			//db, e := sql.Open("mysql", "root:123456@tcp(localhost)/blog?charset=utf8")
			defer conn.Close()

			u := model.User{}
			//数据库查询
			row := conn.QueryRow("select * from user where username=? and password=?", username, password)
			err := row.Scan(&u.Id, &u.Username, &u.Password, &u.Nick_name)
			if err != nil {
				t, err := template.ParseFiles("views/login.tpl")
				if err != nil {
					w.Write([]byte("login page not found!\n"))
				}
				t.Execute(w, model.Result{Data: "用户名或密码错误"})
				return
			}
			//如果sessionid为空
			s = sessionManager.NewSession()
			s.Set("username", u.Nick_name)
			//sessionManager.SessionPool()[s.SID()]=s
			//创建cookie
			cookie = &http.Cookie{Name: session.COOKIESESSIONIDNAME, Value: s.SID()}
			http.SetCookie(w, cookie)
			//重定向到首页
			http.Redirect(w, r, "/index", 302)
		}
	//如果是get请求
	} else {
		if cookie, _ := r.Cookie(session.COOKIESESSIONIDNAME); cookie != nil && cookie.Value != "" {
			session := sessionManager.GetSession(cookie.Value)
			if session != nil {
				result := model.Result{}
				fmt.Printf("username:%s\n", session.Get("username"))
				result.Data = session.Get("username").(string)
				http.Redirect(w, r, "/index", http.StatusFound)
				return
			}
		}
		t, err := template.ParseFiles("views/login.tpl")
		if err != nil {
			w.Write([]byte("login page not found"))
			return
		}
		t.Execute(w, nil)
	}
}
func Index(w http.ResponseWriter, r *http.Request) {
	//获取cookie
	cookie, err := r.Cookie(session.COOKIESESSIONIDNAME)
	var result = model.Result{}
	if err == nil && cookie.Value != "" {
		session := sessionManager.GetSession(cookie.Value)
		if session != nil {
			fmt.Printf("username:%s\n", session.Get("username"))
			result.Data = session.Get("username").(string)
		}
	}
	t, err := template.ParseFiles("views/index.tpl")
	if err != nil || t == nil {
		errors.New("errors occured")
	}
	t.Execute(w, result)
}
func About(w http.ResponseWriter, r *http.Request) {
	cookie, err := r.Cookie(session.COOKIESESSIONIDNAME)
	var result = model.Result{}
	if err == nil && cookie.Value != "" {
		session := sessionManager.GetSession(cookie.Value)
		if session != nil {
			fmt.Printf("username:%s\n", session.Get("username"))
			result.Data = session.Get("username").(string)
		}
	}
	t, err := template.ParseFiles("views/about.tpl")
	if err != nil {
		errors.New("errors occured")
	}
	t.Execute(w, result)
}
func File(w http.ResponseWriter, r *http.Request) {
	cookie, err := r.Cookie(session.COOKIESESSIONIDNAME)
	var result = model.Result{}
	if err == nil && cookie.Value != "" {
		session := sessionManager.GetSession(cookie.Value)
		if session != nil {
			fmt.Printf("username:%s\n", session.Get("username"))
			result.Data = session.Get("username").(string)
		}
	}
	t, err := template.ParseFiles("views/file/file_index.tpl")
	if err != nil {
		errors.New("errors occured")
	}
	t.Execute(w, result)
}
