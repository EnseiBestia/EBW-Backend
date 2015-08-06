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
<style>
/* autocomplete */
div.ac {border: 1px solid #ccc;position: absolute;display: none;overflow: auto;background-color: #ffffff;}
div.ac > ul {margin-top:10px;padding:0;}
div.ac > ul > li {height:33px;line-height:33px;cursor:pointer;}
div.ac > ul > li:hover{background:#eee;}
div.ac > ul > li > div p {padding-left:15px;}
</style>
</head>
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
<div class="col-xs-6" style="width:44%;">
<div class="btn-group">
<a class="btn btn-default active" href="distribute.jsp" tppabs="distribute.jsp">列表</a>
<a class="btn btn-default " href="distribute_map.jsp" tppabs="distribute_map.jsp">地图</a>
</div>
</div>
</div>
<div class="row">
<div class="col-md-12 col-lg-12" id="container">
<div class="margin-top" id="siji" style="float: left; width: 999px;">
<div class="panel panel-default">
<div class="panel-heading">
上班中的救援人员，查找救援人员按Ctrl+F &nbsp;&nbsp; <span class="label label-success">空闲</span>  <span class="label label-danger">忙碌</span>
<button class="pull-right btn btn-default btn-xs" onclick="window.location.reload(true);"><i class="icon-refresh"></i>&nbsp;刷新</button>
</div>
<div id="driver_panels" class="panel-body">
<div class="alert alert-danger listmodeDriver" role="alert" id="driver_424"><button type="button" class="btn btn-danger btn-xs pop" data="424"> 李四(安联)</button><a>(滨惠北三街)</a> 通州区滨惠北三街（19:36）→ 未知（未知）<input type="hidden" name="address" value=""><input type="hidden" name="finish" value=""><input type="hidden" name="orderId" value="3062"></div>
<div class="alert alert-danger listmodeDriver" role="alert" id="driver_424"><button type="button" class="btn btn-danger btn-xs pop" data="424">张三(安联)</button><a>(滨惠北三街)</a> 通州区滨惠北三街（19:36）→ 未知（未知）<input type="hidden" name="address" value=""><input type="hidden" name="finish" value=""><input type="hidden" name="orderId" value="3062"></div>
<div class="alert alert-success listmodeDriver" role="alert" id="driver_424"><button type="button" class="btn btn-success btn-xs pop" data="424">王五(个人)</button><a>(滨惠北三街)</a> 滨惠北三街（19:34）→ 滨惠北三街（21:02）<input type="hidden" name="address" value="滨惠北三街"><input type="hidden" name="finish" value="21:02"><input type="hidden" name="orderId" value="3061"></div>
<div class="alert alert-success listmodeDriver" role="alert" id="driver_424"><button type="button" class="btn btn-success btn-xs pop" data="424">测试</button><a>(滨惠北三街)</a> 滨惠北三街（19:34）→ 滨惠北三街（21:02）<input type="hidden" name="address" value="滨惠北三街"><input type="hidden" name="finish" value="21:02"><input type="hidden" name="orderId" value="3061"></div></div>
</div>
</div>
<div class="margin-top" style="width:280px;float:right;margin-right:0px;" id="paidan">
<div class="panel panel-default">
<div class="panel-heading">
派单
</div>
<div class="panel-body">
<input id="search_driver" placeholder="输入救援人员姓名、手机号、工号即可搜索" class="form-control" type="text" value="" autocomplete="off">
<br>
<div id="drivers_ul" class="list-group" style="overflow-y:auto;max-height:320px;">
</div>
<hr>
<b>未派工单</b>
<div id="newOrder_ul" class="list-group" style="overflow-y:auto;max-height:500px;">
<a id="newOrder_3062" class="list-group-item listmode" href="distribute_step1.jsp" tppabs="distribute_step1.jsp">
<input type="radio" name="newOrderRadios" value="3062">
19:36 通州区滨惠北三街
</a>
</div>
</div>
</div>
</div>
</div>
</div>
<!--输入地址弹出框-->
<div class="modal fade" id="addrInput">
<div class="modal-dialog modal-sm">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
<h4 class="modal-title">预计目的地</h4>
</div>
<div class="modal-body">
<p>
</p><form class="form" role="form">
<div class="form-group">
<label for="address">预计目的地</label>
<input class="form-control" name="address" type="text" placeholder="请输入目的地附近的建筑物、商户或者街道名称">
</div>
<div class="form-group">
<label for="address">预计行程时间，以当前时间开始计算(分钟)</label>
<input type="number" name="needTime" class="form-control" placeholder="单位分钟，以当前时间开始计算">
</div>
</form>
<p></p>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
<button type="button" class="btn btn-primary">保存</button>
</div>
</div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<audio id="new_order_play" src="../assets/audio/new_msg.mp3" tppabs="http://erescue.wabestway.com:8080/assets/audio/new_msg.mp3" hidden="true"></audio>
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
<script src="js/jquery.autocomplete.min.js" tppabs="js/jquery.autocomplete.min.js"></script>
<script type="text/javascript">
window.daijia = {
ctx:'',
center:'',
userId:'266'
};
</script>
<script type="text/javascript">
$("#nav_header").children().removeClass("active");
$("#nav_header_distribute").addClass("active");
</script>

<script src="js/listmode.js" tppabs="js/listmode.js" type="text/javascript"></script>

<div class="ac" style="font-size: 14px;"><ul></ul></div><div id="page_message" class="page_mess_animate page_mess_ok" style="display: none;">救援人员测试，已经上线</div></body></html>