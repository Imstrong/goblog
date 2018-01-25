var testEditor;
$(function () {
    testEditor = editormd("test-editormd", {
        width   : "90%",
        height  : 640,
        syncScrolling : "single",
        path    : "/static/editor.md-master/lib/"
    });
    $("#type").select2();
});
