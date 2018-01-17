<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="static/uikit-3.0.0/css/uikit.css">
    <link rel="stylesheet" href="static/css/file/file_index.css">
</head>
<body>
<div class="hair"><p>欢迎访问，{{if not .Data}}请<a href="/login">登录</a>{{else}}<a href="/about">{{.Data}}</a>{{end}}</p>
</div>
<div class="header">
    <div class="navbar">
        <div class="logo"><a href="/">追影子的人</a></div>
    </div>
</div>
<div class="content">
    <div class="wrapper-wrap">
        <div class="wrapper">
            <ul uk-accordion="collapsible: false">
                <li>
                    <a class="uk-accordion-title" href="#"><p uk-icon="icon:code" class="title-icon"></p>
                        <p>编程</p></a>
                    <div class="uk-accordion-content">
                        <hr class="uk-divider-icon">
                        <a class="uk-button uk-button-default">Java</a>
                        <a class="uk-button uk-button-default">多线程</a>
                        <a class="uk-button uk-button-default">核心类库</a>
                        <a class="uk-button uk-button-default">Web</a>
                        <a class="uk-button uk-button-default">数据结构</a>
                        <a class="uk-button uk-button-default">设计模式</a>
                        <a class="uk-button uk-button-default">算法</a>
                        <a class="uk-button uk-button-default">Java</a>
                        <a class="uk-button uk-button-default">多线程</a>
                        <a class="uk-button uk-button-default">核心类库</a>
                        <a class="uk-button uk-button-default">Web</a>
                        <a class="uk-button uk-button-default">数据结构</a>
                        <a class="uk-button uk-button-default">设计模式</a>
                        <a class="uk-button uk-button-default">算法</a>
                        <hr/>
                    </div>
                </li>
                <li>
                    <a class="uk-accordion-title" href="#"><p uk-icon="icon:pencil" class="title-icon"></p>
                        <p>读书</p></a>
                    <div class="uk-accordion-content">
                        <hr class="uk-divider-icon">
                        <a class="uk-button uk-button-default">Java</a>
                        <a class="uk-button uk-button-default">多线程</a>
                        <a class="uk-button uk-button-default">核心类库</a>
                        <a class="uk-button uk-button-default">Web</a>
                        <a class="uk-button uk-button-default">数据结构</a>
                        <a class="uk-button uk-button-default">设计模式</a>
                        <a class="uk-button uk-button-default">算法</a>
                        <hr/>
                    </div>
                </li>
                <li>
                    <a class="uk-accordion-title" href="#"><p uk-icon="icon:happy" class="title-icon"></p>
                        <p>生活</p></a>
                    <div class="uk-accordion-content">
                        <hr class="uk-divider-icon">
                        <a class="uk-button uk-button-default">Java</a>
                        <a class="uk-button uk-button-default">多线程</a>
                        <a class="uk-button uk-button-default">核心类库</a>
                        <a class="uk-button uk-button-default">Web</a>
                        <a class="uk-button uk-button-default">数据结构</a>
                        <a class="uk-button uk-button-default">设计模式</a>
                        <a class="uk-button uk-button-default">算法</a>
                        <hr/>
                    </div>
                </li>
            </ul>
        </div>
        <div class="article-list">
            <div class="uk-card uk-card-default uk-width-1-2@m">
                <div class="uk-card-header">
                    <div class="uk-grid-small uk-flex-middle" uk-grid>
                        <div class="uk-width-expand">
                            <h3 class="uk-card-title uk-margin-remove-bottom">Title</h3>
                            <p class="uk-text-meta uk-margin-remove-top">
                                <time datetime="2016-04-01T19:00">April 01, 2016</time>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="uk-card-body">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
                </div>
                <div class="uk-card-footer">
                    <a href="#" class="uk-button uk-button-text">Read more</a>
                </div>
            </div>
            <div class="uk-card uk-card-default uk-width-1-2@m">
                <div class="uk-card-header">
                    <div class="uk-grid-small uk-flex-middle" uk-grid>
                        <div class="uk-width-expand">
                            <h3 class="uk-card-title uk-margin-remove-bottom">Title</h3><a href="#" class="uk-button uk-button-text">Read more</a>
                            <p class="uk-text-meta uk-margin-remove-top">
                                <time datetime="2016-04-01T19:00">April 01, 2016</time>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="uk-card-body">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
                </div>
                <div class="uk-card-footer">

                </div>
            </div>
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
<script type="text/javascript" src="/static/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="static/uikit-3.0.0/js/uikit.js"></script>
<script type="text/javascript" src="static/uikit-3.0.0/js/uikit-icons.js"></script>
<script type="text/javascript" src="/static/js/about.js"></script>
<script type="text/javascript">
</script>
</body>
</html>