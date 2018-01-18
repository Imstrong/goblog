<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="static/css/normalize.css">
    <link rel="stylesheet" href="static/uikit-3.0.0/css/uikit.css">
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
                    <div class="uk-accordion-title uk-link" href="#"><p uk-icon="icon:pencil" class="title-icon"></p>
                        <p>读书</p><a title="查看全部">all...</a></div>
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
                    <div class="uk-accordion-title uk-link" href="#"><p uk-icon="icon:happy" class="title-icon"></p>
                        <p>生活</p><a title="查看全部">all...</a></div>
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
            <div class="list-toolbar">
                <nav class="uk-navbar uk-navbar-container uk-margin">
                    <div class="uk-navbar-right">
                        <div>
                            <a class="uk-navbar-toggle" uk-search-icon href="#"></a>
                            <div class="uk-drop" uk-drop="mode: click; pos: left-center; offset: 0">
                                <form class="uk-search uk-search-navbar uk-width-1-1">
                                    <input class="uk-search-input" type="search" placeholder="Search..." autofocus>
                                </form>
                            </div>
                        </div>
                    </div>
                </nav>
                <button class="uk-button uk-button-primary">
                    <i uk-icon="icon:pencil"></i>写文章
                </button>
            </div>
            <div class="uk-card uk-card-default uk-card-hover uk-width-1-2@m article">
                <div class="uk-card-header">
                    <div class="uk-grid-small uk-flex-middle" uk-grid>
                        <div class="uk-width-expand">
                            <a class="uk-button uk-button-text"><p class="article-title-text">Java中多线程程序设计的要点</p></a>
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
                </div>
            </div>
            <div class="uk-card uk-card-default uk-card-hover uk-width-1-2@m article">
                <div class="uk-card-header">
                    <div class="uk-grid-small uk-flex-middle" uk-grid>
                        <div class="uk-width-expand">
                            <a class="uk-button uk-button-text"><p class="article-title-text">Java中多线程程序设计的要点</p></a>
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
                </div>
            </div>
            <div class="uk-card uk-card-default uk-card-hover uk-width-1-2@m article">
                <div class="uk-card-header">
                    <div class="uk-grid-small uk-flex-middle" uk-grid>
                        <div class="uk-width-expand">
                            <a class="uk-button uk-button-text"><p class="article-title-text">Java中多线程程序设计的要点</p></a>
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
                </div>
            </div>
            <div class="uk-card uk-card-default uk-card-hover uk-width-1-2@m article">
                <div class="uk-card-header">
                    <div class="uk-grid-small uk-flex-middle" uk-grid>
                        <div class="uk-width-expand">
                            <a class="uk-button uk-button-text"><p class="article-title-text">Java中多线程程序设计的要点</p></a>
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
                </div>
            </div>
            <div class="uk-card uk-card-default uk-card-hover uk-width-1-2@m article">
                <div class="uk-card-header">
                    <div class="uk-grid-small uk-flex-middle" uk-grid>
                        <div class="uk-width-expand">
                            <a class="uk-button uk-button-text"><p class="article-title-text">Java中多线程程序设计的要点</p></a>
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
                </div>
            </div>
        </div>
    </div>
    <div class="list-footer">
        <ul class="uk-pagination uk-flex-center" uk-margin>
            <li><a href="#"><span uk-pagination-previous></span></a></li>
            <li><a href="#">1</a></li>
            <li class="uk-disabled"><span>...</span></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#">6</a></li>
            <li class="uk-active"><span>7</span></li>
            <li><a href="#">8</a></li>
            <li><a href="#">9</a></li>
            <li><a href="#">10</a></li>
            <li class="uk-disabled"><span>...</span></li>
            <li><a href="#">20</a></li>
            <li><a href="#"><span uk-pagination-next></span></a></li>
        </ul>
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