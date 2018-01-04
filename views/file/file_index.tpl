<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="static/css/reset.css">
    <link rel="stylesheet" href="static/flatui/css/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/bootstrap-treeview/bootstrap-treeview.min.css">
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
    <div class="wrapper">
        <div>
            <h2>技术类</h2>
            {{/*<ul>
                <li>
                    <p>java</p>
                    <ul>
                        <li>spring</li>
                        <li>多线程</li>
                        <li>文件处理</li>
                        <li>分布式</li>
                        <li>nosql</li>
                    </ul>
                </li>
                <li>数据结构</li>
                <li>算法</li>
                <li>golang</li>
                <li>javascript</li>
            </ul>*/}}
            <div id="tree"></div>
        </div>
        <div>
            <h2>生活类</h2>
        </div>
        <div>
            <h2>读书</h2>
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
<script type="text/javascript" src="/static/bootstrap-treeview/bootstrap-treeview.min.js"></script>
<script type="text/javascript" src="/static/js/about.js"></script>
<script type="text/javascript">
    var data = [
        {
            text: "Node 1",
            icon: "glyphicon glyphicon-stop",
            selectedIcon: "glyphicon glyphicon-stop",
            color: "#000000",
            backColor: "#FFFFFF",
            href: "#node-1",
            selectable: true,
            state: {
                checked: true,
                disabled: true,
                expanded: true,
                selected: true
            },
            // tags: ['available'],
            nodes: [
                {
                    text: "Child 1",
                    nodes: [
                        {
                            text: "Grandchild 1"
                        },
                        {
                            text: "Grandchild 2"
                        }
                    ]
                },
                {
                    text: "Child 2"
                }
            ]
        },
        {
            text: "Parent 2"
        },
        {
            text: "Parent 3"
        },
        {
            text: "Parent 4"
        },
        {
            text: "Parent 5"
        }
    ];
    function getTree() {
        // Some logic to retrieve, or generate tree structure
        return data;
    }

    $('#tree').treeview({data: getTree()});
</script>
</body>
</html>