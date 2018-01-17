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
                    <div class="uk-accordion-title uk-link"><p uk-icon="icon:code" class="title-icon"></p>
                        <p>编程</p><a title="查看全部">all...</a></div>
                    <div class="uk-accordion-content">
                        <a class="uk-badge">Java</a>
                        <a class="uk-badge">多线程</a>
                        <a class="uk-badge">核心类库</a>
                        <a class="uk-badge">Web</a>
                        <a class="uk-badge">数据结构</a>
                        <a class="uk-badge">设计模式</a>
                        <a class="uk-badge">算法</a>
                        <a class="uk-badge">Java</a>
                        <a class="uk-badge">多线程</a>
                        <a class="uk-badge">核心类库</a>
                        <a class="uk-badge">Web</a>
                        <a class="uk-badge">数据结构</a>
                        <a class="uk-badge">设计模式</a>
                        <a class="uk-badge">算法</a>
                    </div>
                </li>
                <li>
                    <a class="uk-accordion-title" href="#"><p uk-icon="icon:pencil" class="title-icon"></p>
                        <p>读书</p></a>
                    <div class="uk-accordion-content">
                        <a class="uk-badge">Java</a>
                        <a class="uk-badge">多线程</a>
                        <a class="uk-badge">核心类库</a>
                        <a class="uk-badge">Web</a>
                        <a class="uk-badge">数据结构</a>
                        <a class="uk-badge">设计模式</a>
                        <a class="uk-badge">算法</a>
                        <a class="uk-badge">Java</a>
                        <a class="uk-badge">多线程</a>
                        <a class="uk-badge">核心类库</a>
                        <a class="uk-badge">Web</a>
                        <a class="uk-badge">数据结构</a>
                        <a class="uk-badge">设计模式</a>
                        <a class="uk-badge">算法</a>
                    </div>
                </li>
                <li>
                    <a class="uk-accordion-title" href="#"><p uk-icon="icon:happy" class="title-icon"></p>
                        <p>生活</p></a>
                    <div class="uk-accordion-content">
                        <a class="uk-badge">Java</a>
                        <a class="uk-badge">多线程</a>
                        <a class="uk-badge">核心类库</a>
                        <a class="uk-badge">Web</a>
                        <a class="uk-badge">数据结构</a>
                        <a class="uk-badge">设计模式</a>
                        <a class="uk-badge">算法</a>
                        <a class="uk-badge">Java</a>
                        <a class="uk-badge">多线程</a>
                        <a class="uk-badge">核心类库</a>
                        <a class="uk-badge">Web</a>
                        <a class="uk-badge">数据结构</a>
                        <a class="uk-badge">设计模式</a>
                        <a class="uk-badge">算法</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="article-list">
        <div class="article-list-wrapper clearfix">
            <div class="uk-card uk-card-default uk-width-1-2@m article">
                <div class="uk-card-header">
                    <div class="uk-grid-small uk-flex-middle" uk-grid>
                        <div class="uk-width-expand">
                            <h3 class="uk-card-title uk-margin-remove-bottom">Java中多线程程序设计的要点</h3>
                            <p class="uk-text-meta uk-margin-remove-top">
                                <time datetime="2016-04-01T19:00">April 01, 2016</time>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="uk-card-body">
                    <p>
                        1.div1：默认状态。超出文本默认显示在div外
                    　　2.div2：text-overflow:ellipsis; 使用text-overflow以...代理超出文本
                    　　3.div3：如果文本换行被设置为默认（white-space：normal），不会出现超出文本被替代的情况。所以如果文本是块状结构，不能使用text-overflow替换超出文本
                    　　4.div4：text-overflow:clip; 文本在内边框处被剪切
                    　　5.div5：text-overflow:"###"; 自定义超出文本替换的字符串
                    </p>
                    <a href="#" class="uk-button uk-button-text">Read more</a>
                </div>
            </div>
            <div class="uk-card uk-card-default uk-width-1-2@m article">
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
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                        incididunt.</p>
                    <a href="#" class="uk-button uk-button-text">Read more</a>
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