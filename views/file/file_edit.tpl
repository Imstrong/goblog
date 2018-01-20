<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="static/css/normalize.css">
    <link rel="stylesheet" href="static/uikit-3.0.0/css/uikit.css">
    <link rel="stylesheet" href="static/editor.md-master/css/editormd.min.css">
    <link rel="stylesheet" href="static/css/file/file_index.css">
</head>
<body>
<div class="hair"><p>欢迎访问，{{if not .Data}}请<a href="/login">登录</a>{{else}}<a href="/about">{{.Data}}</a>{{end}}</p>
</div>
<div class="header">
    <div class="navbar">
        <div class="logo"><a href="/">追影子的人</a></div>
        <ul>
            <li><a href="/file">归档</a></li>
            <li><a href="/leave_message">论坛</a></li>
            <li><a href="/about">关于我</a></li>
            <menu class="menu"></menu>
        </ul>
    </div>
</div>
<div class="content">
    <div id="test-editormd" uk-height-viewport>
        <textarea style="display:none;">
        </textarea>
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
<script type="text/javascript" src="static/uikit-3.0.0/js/uikit.js"></script>
<script type="text/javascript" src="static/uikit-3.0.0/js/uikit-icons.js"></script>
<script type="text/javascript" src="static/editor.md-master/editormd.min.js"></script>
<script type="text/javascript" src="static/js/file_index.js"></script>
</body>
</html>