var testEditor;
$(function () {
    testEditor = editormd("test-editormd", {
        width   : "90%",
        height  : 640,
        syncScrolling : "single",
        path    : "static/editor.md-master/lib/"
    });
});
/*
var mditor =  Mditor.fromTextarea(document.getElementById('editor'));

//获取或设置编辑器的值
mditor.on('ready',function(){
    console.log(mditor.value);
    mditor.value = '** hello **';
});*/
