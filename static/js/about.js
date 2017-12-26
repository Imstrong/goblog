$(function () {
    $(document).click(function(e){
        var obj = e.target || e.srcElement;
        if (obj.id == "wechat") {
            return;
        }
        $(".qr-code").fadeOut();

    })
    //移除图片浏览器上的描述文字
    $(".desc").css("display","none");
    $(".photo:last-child>.desc").css("display","block");

    //点击微信图标弹出二维码
    $("#wechat").click(function(){
        $(".qr-code").fadeIn();
    });
    $(".after-wrapper").click(function(){
        var photos=$(".photo-group").children("div");
        $(photos[photos.length-1]).fadeOut(0,function(){
            $(".photo-group").prepend(photos[photos.length-1]);
            $(photos[photos.length-1]).css("display","block");
        });
        $(".desc").css("display","none");
        $(".photo:last-child>.desc").css("display","block");
    })
    $(".pre-wrapper").click(function(){
        var photos=$(".photo-group").children("div");
        $(".photo-group").append(photos[0]);
        $(".desc").css("display","none");
        $(".photo:last-child>.desc").css("display","block");
    })
})