<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="static/css/reset.css">
    <link rel="stylesheet" href="static/css/about.css">
</head>
<body>
<div class="hair"><p>欢迎访问，{{if not .Data}}请<a href="/login">登录</a>{{else}}<a href="/about">{{.Data}}</a>{{end}}</p></div>
<div class="header">
    <div class="navbar">
        <div class="logo"><a href="/">追影子的人</a></div>
        <ul>
            <li><a href="/file">归档</a></li>
            <li><a href="/leave_message">留言</a></li>
            <li><a href="/about">关于我</a></li>
            <menu class="menu"></menu>
        </ul>
    </div>
</div>
<div class="content">
    <div class="introduce">
        <div class="profile-wrapper">
            <img src="static/img/icon.jpg" alt=""/>
        </div>
        <h2>装逼之王</h2>
        <p>农历 1994.08.23 甘肃天水</p>
        <p>垃圾程序员</p>
        <div class="socialities">
            <div class="social-group">
                <div class="social-wrapper"><a href="https://weibo.com/u/2965281877" target="_blank" title="访问我的微博"><img src="static/img/weibo.png"/></a></div>
                <div class="social-wrapper"><a href="https://github.com/Imstrong" target="_blank" title="访问我的github"><img src="static/img/github.png"/></a></div>
                <div class="social-wrapper"><a href="javascript:;"><img src="static/img/wechat.png" id="wechat"/></a><span class="qr-code"><img
                        src="static/img/codeeeeeer.jpg" alt=""></span></div>
            </div>
        </div>
    </div>
    <div class="photo-content">
        <div class="photo-wrapper">
            <div class="photo-control">
                <div class="pre-wrapper" title="上一张">
                </div>
                <div class="photo-group">
                    <div class="photo">
                        <img src="static/img/banner.jpg" alt="">
                        <p class="desc">优化看着只需这</p>
                    </div>
                    <div class="photo"><img src="static/img/pic01.jpg" alt=""><p class="desc">莫待无花空折枝</p></div>
                    <div class="photo"><img src="static/img/pic02.jpg" alt=""><p class="desc">啊啊啊啊啊啊</p></div>
                    <div class="photo"><img src="static/img/pic03.jpg" alt=""><p class="desc">白斑病白斑病吧</p></div>
                </div>
                <div class="after-wrapper" title="下一张">
                </div>
            </div>
        </div>
        <div class="poet">
            追逐影子的人，自己就是影子。
        </div>
    </div>
</div>
<div class="footer">
    <div class="footer-content">
        <p>Copyright © 2018 - 2019 装逼之王. All Rights Reserved.</p>
        <a href="http://www.miitbeian.gov.cn/"><img src="/static/img/beian.png"/> 粤ICP备17165463号-1</a>
        <p>版权所有，违者必究</p>
    </div>
</div>
<script type="text/javascript" src="static/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="static/js/about.js"></script>
</body>
</html>