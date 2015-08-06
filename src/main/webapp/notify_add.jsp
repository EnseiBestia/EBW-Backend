<%@ page pageEncoding="UTF-8" %>
<html>
<!DOCTYPE html>

<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/bootstrap.css" tppabs="css/bootstrap.css">
<link rel="stylesheet" href="css/font-awesome.min.css" tppabs="css/font-awesome.min.css">
<link rel="stylesheet" href="css/buttons.css" tppabs="css/buttons.css">
<link rel="stylesheet" href="css/scojs.css" tppabs="css/scojs.css">
<link rel="stylesheet" href="css/sco.message.css" tppabs="css/sco.message.css">

<link rel="stylesheet" href="css/gird.css" tppabs="css/gird.css">
<link rel="stylesheet" href="css/form.css" tppabs="css/form.css">
<link href="kindeditor/themes/default/default.css" tppabs="kindeditor/themes/default/default.css" rel="stylesheet"></head>
<body>

    <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>“E路畅通”移动车主服务平台</title>
</head>
<body>
    <div class="container-fluid">
<div class="row">
<div class="col-lg-12">
<div style="text-align: right; line-height:40px;" id="top">
<small>
<span>试用平台</span>
<a href="#">华焱坤泰</a><span>，欢迎回来！ &nbsp;&nbsp;</span>
<a href="#" target="_self">退出系统 </a>
</small>
</div>
</div>
</div>
<nav class="navbar navbar-default" role="navigation">
<!-- Brand and toggle get grouped for better mobile display -->
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a>
<span style="float:left;padding: 15px 15px;font-size: 18px;line-height: 20px;color:#fff;">华焱坤泰-E救援、E代驾、E维保</span>
</a>
</div>
<!-- Collect the nav links, forms, and other content for toggling -->
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
<ul class="nav navbar-nav" id="nav_header">
<li  id="nav_header_order"><a href="index.jsp" tppabs="index.jsp">工单</a></li>
<li  id="nav_header_dispatch"><a href="dispatch.jsp" tppabs="dispatch.jsp">调度</a></li>
<li  id="nav_header_distribute"><a href="distribute.jsp" tppabs="distribute.jsp">派单</a></li>
<li  id="nav_header_driver"><a href="driver.jsp" tppabs="driver.jsp">特服人员 </a></li>
<li  id="nav_header_customer"><a href="customer.jsp" tppabs="customer.jsp">客户 </a></li>
<li  id="nav_header_vendor"><a href="vendor.jsp" tppabs="vendor.jsp">服务商 </a></li>
<li  id="nav_header_statistics"><a href="statistics.jsp" tppabs="statistics.jsp">统计</a></li>
<li  id="nav_header_financial"><a href="financial.jsp" tppabs="financial.jsp">财务</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
<li class="dropdown ">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">通知 <b class="caret"></b></a>
<ul class="dropdown-menu">
<li><a href="notify_driver.jsp" tppabs="notify_driver.jsp">特服人员通知</a></li>
<li><a href="notify_customer.jsp" tppabs="notify_customer.jsp">客户通知</a></li>
</ul>
</li>
<li class="dropdown ">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">微信 <b class="caret"></b></a>
<ul class="dropdown-menu">
<li><a href="#">订阅号</a></li>
<li><a href="#">服务号</a></li>
</ul>
</li>
<li class="dropdown ">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">系统 <b class="caret"></b></a>
<ul class="dropdown-menu">
<li><a href="system_operateLog.jsp" tppabs="system_operateLog.jsp">操作日志</a></li>
<li class="divider"></li>
<li><a href="system_registerCharge.jsp" tppabs="system_registerCharge.jsp">地区收费标准</a></li>
<li><a href="#">自动调度规则配置</a></li>
<li><a href="system_chargeSetting.jsp" tppabs="system_chargeSetting.jsp">参考价目</a></li>
<li class="divider"></li>
<li><a href="system_changePassword.jsp" tppabs="system_changePassword.jsp">修改密码</a></li>
</ul>
</li>
</ul>
</div><!-- /.navbar-collapse -->
</nav>


<div class="lc-box hidden-xs" style="top: 12px; position: absolute;">
<span class="lc-info gcinfo1">未分派工单:2</span>
<span class="lc-info gcinfo2">执行中工单:3</span>
<span class="lc-info gcinfo3">已完成工单:40</span>
<span class="lc-info gcinfo4">今日总工单:45</span>
<span class="lc-info gcinfo5 hidden-sm">空闲救援员:5</span>
<span class="lc-info gcinfo6 hidden-sm">忙碌救援员:2</span>
</div>

</div>

</body>
</html>
<div class="container-fluid">
<div class="row">
<div class="col-md-12">
<div class="panel panel-default" style="height:640px;">
<div class="panel-heading">
发布通知
</div>
<div class="panel-body">
<form id="submit_form" action="http://erescue.wabestway.com:8080/CPICRescue/notice/create" class="form-horizontal" method="post">
<div class="form-group">
<label class="col-sm-3 control-label"><em>*</em>标题：</label>
<div class="col-sm-3">
<input class="form-control" id="title" name="title" type="text" required="">
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label"><em>*</em>发布方：</label>
<div class="col-sm-3">
<input class="form-control" id="publisher" name="publisher" type="text" value="em" required="">
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label"><em>*</em>内容：</label>
<div class="col-sm-8">
<div class="ke-container ke-container-default" style="width: 830px;"><div style="display:block;" class="ke-toolbar" unselectable="on"><span class="ke-outline" data-name="source" title="HTML代码" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-source" unselectable="on"></span></span><span class="ke-inline-block ke-separator"></span><span class="ke-outline" data-name="undo" title="后退(Ctrl+Z)" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-undo" unselectable="on"></span></span><span class="ke-outline" data-name="redo" title="前进(Ctrl+Y)" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-redo" unselectable="on"></span></span><span class="ke-inline-block ke-separator"></span><span class="ke-outline" data-name="preview" title="预览" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-preview" unselectable="on"></span></span><span class="ke-outline" data-name="print" title="打印(Ctrl+P)" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-print" unselectable="on"></span></span><span class="ke-outline" data-name="template" title="插入模板" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-template" unselectable="on"></span></span><span class="ke-outline" data-name="code" title="插入程序代码" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-code" unselectable="on"></span></span><span class="ke-outline" data-name="cut" title="剪切(Ctrl+X)" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-cut" unselectable="on"></span></span><span class="ke-outline" data-name="copy" title="复制(Ctrl+C)" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-copy" unselectable="on"></span></span><span class="ke-outline" data-name="paste" title="粘贴(Ctrl+V)" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-paste" unselectable="on"></span></span><span class="ke-outline" data-name="plainpaste" title="粘贴为无格式文本" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-plainpaste" unselectable="on"></span></span><span class="ke-outline" data-name="wordpaste" title="从Word粘贴" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-wordpaste" unselectable="on"></span></span><span class="ke-inline-block ke-separator"></span><span class="ke-outline ke-selected" data-name="justifyleft" title="左对齐" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-justifyleft" unselectable="on"></span></span><span class="ke-outline" data-name="justifycenter" title="居中" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-justifycenter" unselectable="on"></span></span><span class="ke-outline" data-name="justifyright" title="右对齐" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-justifyright" unselectable="on"></span></span><span class="ke-outline" data-name="justifyfull" title="两端对齐" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-justifyfull" unselectable="on"></span></span><span class="ke-outline" data-name="insertorderedlist" title="编号" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-insertorderedlist" unselectable="on"></span></span><span class="ke-outline" data-name="insertunorderedlist" title="项目符号" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-insertunorderedlist" unselectable="on"></span></span><span class="ke-outline" data-name="indent" title="增加缩进" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-indent" unselectable="on"></span></span><span class="ke-outline" data-name="outdent" title="减少缩进" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-outdent" unselectable="on"></span></span><span class="ke-outline" data-name="subscript" title="下标" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-subscript" unselectable="on"></span></span><span class="ke-outline" data-name="superscript" title="上标" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-superscript" unselectable="on"></span></span><span class="ke-outline" data-name="clearhtml" title="清理HTML代码" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-clearhtml" unselectable="on"></span></span><span class="ke-outline" data-name="quickformat" title="一键排版" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-quickformat" unselectable="on"></span></span><span class="ke-outline" data-name="selectall" title="全选(Ctrl+A)" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-selectall" unselectable="on"></span></span><span class="ke-inline-block ke-separator"></span><span class="ke-outline" data-name="fullscreen" title="全屏显示(Esc)" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-fullscreen" unselectable="on"></span></span><div class="ke-hr"></div><span class="ke-outline" data-name="formatblock" title="段落" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-formatblock" unselectable="on"></span></span><span class="ke-outline" data-name="fontname" title="字体" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-fontname" unselectable="on"></span></span><span class="ke-outline" data-name="fontsize" title="文字大小" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-fontsize" unselectable="on"></span></span><span class="ke-inline-block ke-separator"></span><span class="ke-outline" data-name="forecolor" title="文字颜色" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-forecolor" unselectable="on"></span></span><span class="ke-outline" data-name="hilitecolor" title="文字背景" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-hilitecolor" unselectable="on"></span></span><span class="ke-outline" data-name="bold" title="粗体(Ctrl+B)" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-bold" unselectable="on"></span></span><span class="ke-outline" data-name="italic" title="斜体(Ctrl+I)" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-italic" unselectable="on"></span></span><span class="ke-outline" data-name="underline" title="下划线(Ctrl+U)" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-underline" unselectable="on"></span></span><span class="ke-outline" data-name="strikethrough" title="删除线" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-strikethrough" unselectable="on"></span></span><span class="ke-outline" data-name="lineheight" title="行距" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-lineheight" unselectable="on"></span></span><span class="ke-outline" data-name="removeformat" title="删除格式" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-removeformat" unselectable="on"></span></span><span class="ke-inline-block ke-separator"></span><span class="ke-outline" data-name="image" title="图片" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-image" unselectable="on"></span></span><span class="ke-outline" data-name="multiimage" title="批量图片上传" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-multiimage" unselectable="on"></span></span><span class="ke-outline" data-name="flash" title="Flash" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-flash" unselectable="on"></span></span><span class="ke-outline" data-name="media" title="视音频" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-media" unselectable="on"></span></span><span class="ke-outline" data-name="insertfile" title="插入文件" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-insertfile" unselectable="on"></span></span><span class="ke-outline" data-name="table" title="表格" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-table" unselectable="on"></span></span><span class="ke-outline" data-name="hr" title="插入横线" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-hr" unselectable="on"></span></span><span class="ke-outline" data-name="emoticons" title="插入表情" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-emoticons" unselectable="on"></span></span><span class="ke-outline" data-name="baidumap" title="百度地图" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-baidumap" unselectable="on"></span></span><span class="ke-outline" data-name="pagebreak" title="插入分页符" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-pagebreak" unselectable="on"></span></span><span class="ke-outline" data-name="anchor" title="锚点" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-anchor" unselectable="on"></span></span><span class="ke-outline" data-name="link" title="超级链接" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-link" unselectable="on"></span></span><span class="ke-outline" data-name="unlink" title="取消超级链接" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-unlink" unselectable="on"></span></span><span class="ke-inline-block ke-separator"></span><span class="ke-outline" data-name="about" title="关于" unselectable="on"><span class="ke-toolbar-icon ke-toolbar-icon-url ke-icon-about" unselectable="on"></span></span></div><div style="display: block; height: 338px;" class="ke-edit"><iframe class="ke-edit-iframe" hidefocus="true" frameborder="0" style="width: 100%; height: 338px;"></iframe><textarea class="ke-edit-textarea" hidefocus="true" style="width: 100%; height: 338px; display: none;"></textarea></div><div class="ke-statusbar"><span class="ke-inline-block ke-statusbar-center-icon" style="visibility: hidden;"></span><span class="ke-inline-block ke-statusbar-right-icon" style="visibility: hidden;"></span></div></div><textarea class="form-control" cols="20" id="content" name="content" rows="2" required="" style="display: none;"></textarea>
</div>
</div>
<div class="form-group" style="margin-left:10px;">
<label class="col-sm-3 control-label"></label>
<input id="submit_button" type="button" class="btn btn-primary" value="发布" onclick="window.location.href = &#39;notify_customer.jsp&#39;;" >
<input type="button" class="btn btn-default" onclick="window.location.href = &#39;notify_customer.jsp&#39;;" value="返回">
</div>
</form>
</div>
</div>
</div>
</div>
<audio id="new_order_play" src="audio/new_msg.mp3" tppabs="audio/new_msg.mp3" hidden="true"></audio>

<div class="row margin-top">

    
    <div class="container-fluid">
<div class="col-xs-12">
<div class="text-center text-muted small">
<p>
为保证最佳用户体验，强烈建议您使用 <a href="#" title="" data-toggle="tooltip" data-original-title="点击下载">谷歌Chrome浏览器</a>
</p>
<p>
如果您习惯于用IE浏览器，强烈建议您升级到 <a href="javascript:if(confirm('http://windows.microsoft.com/zh-cn/internet-explorer/ie-10-worldwide-languages  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ������·������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://windows.microsoft.com/zh-cn/internet-explorer/ie-10-worldwide-languages'" tppabs="http://windows.microsoft.com/zh-cn/internet-explorer/ie-10-worldwide-languages" title="" data-original-title="点击下载升级">最新的IE浏览器(10+)</a>
当前版本 V0.0.2 <a target="_blank" href="#" data-original-title="" title="">更新说明</a> 
</p>

</div>
</div>
</div>
</div>
</div>
<object classid="clsid:F44CFA19-6B43-45EE-90A3-29AA08000510" id="qnviccub" data="data:application/x-oleobject;BASE64,GfpM9ENr7kWQoymqCAAFEAADAAD7FAAADhEAAA==" width="0" height="0"></object>
<script type="text/javascript" language="javascript">window.daijia = {ctx : ''};</script>
<script src="js/qnviccub.js" tppabs="js/qnviccub.js"></script>
<script src="js/jquery-1.11.0.min.js" tppabs="js/jquery-1.11.0.min.js"></script>
<script src="js/bootstrap.min.js" tppabs="js/bootstrap.min.js"></script>
<script src="js/sco.modal.js" tppabs="js/sco.modal.js"></script>
<script src="js/sco.message.js" tppabs="js/sco.message.js"></script>
<script src="js/sco.confirm.js" tppabs="js/sco.confirm.js"></script>
<script src="js/sockjs-0.3.min.js" tppabs="js/sockjs-0.3.min.js"></script>
<script src="js/daijia.js" tppabs="js/daijia.js"></script>
<script language="javascript" for="qnviccub" event="OnQnvEvent(chID,type,handle,result,param,szdata,szdataex)">
T_GetEvent(chID,type,handle,result,szdata)
</script>
<script src="js/kindeditor-all-min.js" tppabs="js/kindeditor-all-min.js"></script>
<script src="js/zh_CN.js" tppabs="js/zh_CN.js"></script>
<script type="text/javascript">
$(document).ready(function(){
KindEditor.ready(function(K) {
window.editor = K.create('#content',{
filterMode : false,
uploadJson : '/common/kindeditor/fileupload',
allowUpload : true,
fileManagerJson : '/common/kindeditor/filemanager',
allowFileManager : true,
height:400,
resizeType:0,
afterCreate : function() {
var self = this;
K.ctrl(document, 13, function() {
self.sync();
});
K.ctrl(self.edit.doc, 13, function() {
self.sync();
});
},
afterBlur:function(){
this.sync();
}
});
});
$('#allCompany').tooltip();
$("#submit_form").submit(function(){
$("#submit_button").attr("disabled",true);
return true;
});
});
</script>
<script type="text/javascript">
$("#nav_header").children().removeClass("active");
$("#nav_header_notify").addClass("active");
</script>
</body></html>