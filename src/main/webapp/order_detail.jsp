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
<style>
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset, input, textarea, p, blockquote,button {
padding:0;
margin:0;
}
.schedule-box {
width:1000px;
margin:0 auto;
position:relative;
font-family:"微软雅黑";
}
.sc-t1, .sc-t2, .sc-t3, .sc-t4, .sc-t5 {
margin: 0 auto;
overflow: hidden;
width: 1000px;
height:40px;
margin-top: 80px;
background-repeat: no-repeat;
background-image: url(images/schedule_bg.png);
}
.sc-t1 {
background-position:-9px -16px;
}
.sc-t2 {
background-position:-9px -64px;
}
.sc-t3 {
background-position:-9px -111px;
}
.sc-t4 {
background-position:-9px -158px;
}
.sc-t5 {
background-position:-9px -205px;
}
.schedule-box ul {
top:-50px;
position:absolute;
}
.sc-text1 {
width:86px;
height:46px;
background:url(images/sc-text1_03.png) no-repeat;
}
.schedule-box ul {
width:106%;
}
.schedule-box li:nth-child(5n) {
margin-right:0;
}
.schedule-box ul li {
float:left;
width:156px;
color:#fff;
margin-left:10px;
line-height:36px;
margin-right:57px;
list-style-type:none;
}
.schedule-box li b {
font-size:14px;
width:86px;
display:block;
text-align:center;
font-weight:normal;
}
.schedule-box li.l-Blue {
background:url(images/l-Blue_bg_03.png) no-repeat;
}
.sc-time {
width:102%;
}
.sc-time span:nth-child(5n) {
margin-right:0;
}
.sc-time span {
color:#0094ff;
float:left;
width:180px;
margin-top:8px;
margin-left:-20px;
margin-right:54px;
text-align:center;
}
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
<div class="row" id="realMap">
<div class="col-md-12">
<ol class="breadcrumb">
<li><a href="index.jsp" tppabs="index.jsp">工单管理</a></li>
<li>查看工单信息</li>
<li>当前单号： 0401201501100026</li>
<li><a href="javascript:;" onclick="history.go(-1)">返回</a> </li>
</ol>
</div>
<div class="col-md-12">
<div class="schedule-box">
<ul>
<li class="sc-text1 "><b>客户下单</b></li>
<li class="sc-text1 "><b>救援人员已接单</b></li>
<li class="sc-text1 "><b>开始救援</b></li>
<li class="sc-text1 "><b>已结算</b></li>
<li class="sc-text1 l-Blue"><b>已报单</b></li>
</ul>
<div class="sc-t5"></div>
<div class="sc-time">
<span>2015/01/10 19:34</span>
<span>2015/01/10 19:35</span>
<span>
2015/01/10 20:34
</span>
<span>2015/01/10 21:02</span>
<span>2015/01/11 00:12</span>
</div>
</div>
</div>
<div class="col-md-12 margin-top">
<div class="tabbable"> <!-- Only required for left/right tabs -->
<ul class="nav nav-tabs">
<li class="active"><a href="order_detail.jsp" tppabs="order_detail.jsp" data-toggle="tab">工单跟踪</a></li>
<li><a id="tab2click" href="order_trace.jsp" tppabs="order_trace.jsp" data-toggle="tab">工单轨迹</a></li>
</ul>
<div class="tab-content">
<div class="tab-pane active" id="tab1">
<div class="row margin-top">
<div class="col-xs-12">
<div class="table-responsive">
<div class="panel panel-primary">
<table class="table table-hover table-striped">
<thead>
<tr style="font-size:14px;">
<th>时间</th>
<th>跟踪信息</th>
</tr>
</thead>
<tbody>
<tr>
<td><span style="color: #606060;">01月10 19:34</span></td>
<td>
<span style="color: #0094ff;">【先生/女士】下单给救援人员【测试】</span>
<span style="color: #ff6a00;"></span>
</td>
</tr>
<tr>
<td><span style="color: #606060;">01月10 19:35</span></td>
<td>
<span style="color: #0094ff;">【vinter】接受工单</span>
<span style="color: #ff6a00;"></span>
</td>
</tr>
<tr>
<td><span style="color: #606060;">01月10 20:34</span></td>
<td>
<span style="color: #0094ff;">【测试】到达客户所在地，开始等待</span>
<span style="color: #ff6a00;"></span>
</td>
</tr>
<tr>
<td><span style="color: #606060;">01月10 20:34</span></td>
<td>
<span style="color: #0094ff;">【测试】出发前往客户目的地，等待总时间为：0分钟（中途等待：0分钟）</span>
<span style="color: #ff6a00;"></span>
</td>
</tr>
<tr>
<td><span style="color: #606060;">01月10 21:02</span></td>
<td>
<span style="color: #0094ff;">【测试】到达目的地，并且结算完成，行程时间为：28分钟,行驶里程为：0.0公里</span>
<span style="color: #ff6a00;"></span>
</td>
</tr>
<tr>
<td><span style="color: #606060;">01月10 21:29</span></td>
<td>
<span style="color: #0094ff;">【测试】报单</span>
<span style="color: #ff6a00;"></span>
</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</div>
<div class="row">
<div class="col-xs-6">
<div class="panel panel-default">
<div class="panel-heading">工单信息</div>
<ul class="list-group">
<li class="list-group-item">创建时间：2015/01/10 19:34</li>
<li class="list-group-item">工单类型：自主预约</li>
<li class="list-group-item">工单来源：客户下单</li>
<li class="list-group-item">救援地点：滨惠北三街</li>
<li class="list-group-item">预约时间：2015/01/10 19:34</li>
<li class="list-group-item">客户姓名：先生/女士</li>
<li class="list-group-item">客户手机：18611786726</li>
<li class="list-group-item">
当前状态：
已报单
</li>
<li class="list-group-item">工单备注：</li>
</ul>
</div>
</div>
<div class="col-xs-6">
<div class="panel panel-default">
<div class="panel-heading">付款信息</div>
<ul class="list-group">
<li class="list-group-item">等待时间：0分钟（中途等待0分钟）</li>
<li class="list-group-item">救援耗时：28分钟（中途等待0分钟）</li>
<li class="list-group-item">行驶公里：0公里</li>
<li class="list-group-item">
应收金额：￥<span>39</span>
</li>
<li class="list-group-item">
实收金额：￥<span id="cash_span">39</span>
<!--
<input id="cash_input" type="number" value="39" style="display:none;"/>
-->
<button id="modifyCash" class="btn btn-default btn-xs">修改</button>
<!--
<button id="modifyCash_ok" class="btn btn-default btn-xs" style="display:none;">确认</button>
-->
</li>
<li class="list-group-item">报销金额：￥0（备注：）</li>
<li class="list-group-item">
付款方式：
现金
</li>
</ul>
</div>
</div>
</div>
</div>
<div class="tab-pane" id="tab2">
<div class="row margin-top">
<div class="col-xs-12">
<div class="panel panel-default">
<div class="panel-heading">
工单轨迹
<input type="button" id="playcar" disabled="disabled" onclick="play()" class="button button-pill button-flat-blue button-tiny" value="开始回放" style="display:none;">
<input type="button" id="resetcar" disabled="disabled" onclick="reset()" class="button button-pill button-flat button-tiny" value="重置" style="display:none;">
<input type="button" id="distancetool" onclick="distance()" class="button button-pill button-flat-action button-tiny" value="测距" style="display:none;">
</div>
<div id="allmap" style="z-index: 99999; height:500px;">
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="row">
<div class="col-md-12 text-center">
<input type="button" class="btn btn-default back" onclick="history.go(-1)" value="返回">
</div>
</div>
</div>
<div class="form-horizontal">
<div class="modal fade" id="dialog_modifyCash">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
<h4 class="modal-title">修改工单金额</h4>
</div>
<div class="modal-body">
<form id="modify_form">
<input type="hidden" name="id" value="3061">
<div class="form-group">
<label class="col-sm-3 control-label">修改后金额：</label>
<div class="col-sm-4">
<input class="form-control" type="number" id="newCash" name="newCash" min="0" required="" placeholder="输入修改金额">
</div>
<label class="col-sm-2 control-label">原金额：</label>
<div class="col-sm-3">
<p class="form-control-static">39</p>
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label">修改原因：</label>
<div class="col-sm-8">
<textarea class="form-control" cols="20" id="dialog_modifyCash_content" name="content" rows="2" required=""></textarea>
</div>
</div>
<hr>
<h5 class="modal-title">填写该工单所对应救援人员和客户的余额变动，<font color="red">点击"+"或"-"使余额增加或减少</font></h5>
<div class="form-group" style="margin-top:20px;">
<label class="col-sm-3 control-label">救援人员余额：</label>
<div class="col-sm-5 input-group">
<span class="input-group-btn"><button id="driver_virtual_plusminus" type="button" class="btn btn-default" title="&#39;+&#39;为增加余额，&#39;-&#39;为减少余额"><span class="glyphicon glyphicon-plus"></span></button></span>
<input type="hidden" id="driverPlusMinus" name="driverPlusMinus" value="0">
<input class="form-control" id="driverMoney" name="driverMoney" type="number" min="0" required="" placeholder="+为增加余额，-为减少余额">
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label">客户余额：</label>
<div class="col-sm-5 input-group">
<span class="input-group-btn"><button id="member_virtual_plusminus" type="button" class="btn btn-default" title="&#39;+&#39;为增加余额，&#39;-&#39;为减少余额"><span class="glyphicon glyphicon-plus"></span></button></span>
<input type="hidden" id="memberPlusMinus" name="memberPlusMinus" value="0">
<input class="form-control" id="memberMoney" name="memberMoney" type="number" min="0" required="" placeholder="+为增加余额，-为减少余额">
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label">公司：</label>
<div class="col-sm-5 input-group">
<p class="form-control-static" id="companyMoney"></p>
</div>
</div>
</form>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-primary" id="ok_modal_modifyCash">提交</button>
<button type="button" class="btn btn-default" id="close_modal_modifyCash">关闭</button>
</div>
</div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div>
</div>
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
<script src="js/api" tppabs="js/api" type="text/javascript"></script><script type="text/javascript" src="js/getscript" tppabs="js/getscript"></script>
<script src="js/DistanceTool_min.js" tppabs="js/DistanceTool_min.js" type="text/javascript"></script>
<script type="text/javascript">
var map = null; //地图对象
var points=[];
var firstpoint=null;
var lastpoint=null;
var isfirst=true;
var timer; //定时器
var index = 0; //记录播放到第几个point
function initialize(){
if(isfirst){
$.post('/order/pointDetails',{'id':3061},function(data){
if(data.success){
if(null!=data.firstLng && null!=data.firstLat){
$("#distance_span").html(data.distance.toFixed(2)+"公里");
firstpoint=new BMap.Point(data.firstLng, data.firstLat);
map = new BMap.Map("allmap");
map.centerAndZoom(firstpoint, 12);
map.enableScrollWheelZoom();
var pointmap=data.orderOrbits;
for (var key in pointmap) {
points.push(new BMap.Point(key, pointmap[""+key+""]));
}
map.addOverlay(new BMap.Polyline(points, {strokeColor: "blue", strokeWeight: 5, strokeOpacity: 1}));
//显示小车子
car = new BMap.Marker(points[0]);
map.addOverlay(car);
$("#playcar").show();
$("#resetcar").show();
$("#distancetool").show();
$("#playcar").attr("disabled",false);
$("#resetcar").attr("disabled",false);
}
} else {
$.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
}
},'json');
isfirst=false;
}
}
function play() {
$("#playcar").attr("disabled",true);
$("#resetcar").attr("disabled",false);
var point = points[index];
//if(index > 0) {
// map.addOverlay(new BMap.Polyline([points[index - 1], point], {strokeColor: "red", strokeWeight: 1, strokeOpacity: 1}));
//}
car.setPosition(point);
index++;
if(index < points.length) {
timer = window.setTimeout("play(" + index + ")", 400);
} else {
$("#playcar").attr("disabled",true);
map.panTo(point);
}
}
function reset() {
$("#playcar").attr("disabled",false);
if(timer) {
window.clearTimeout(timer);
}
index = 0;
car.setPosition(points[0]);
map.panTo(firstpoint);
}
function distance(){
var myDis = new BMapLib.DistanceTool(map);
myDis.open();
}
function modifyCashAction(){
$.post('/order/modifyCash',{'id':3061,'cash':$("#cash_input").val()},function(data){
if(data.success){
$.scojs_message('工单金额修改成功', $.scojs_message.TYPE_OK);
//setTimeout(function(){
window.location.reload(true);
//}, 1000);
} else {
$.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
}
},'json');
}
function changeCompanyMoney(){
var driverMoney=$("#driverMoney").val();
var wxMoney=$("#wxMoney").val();
if(null!=driverMoney){
if($("#driverPlusMinus").val()==1){
driverMoney=Number(driverMoney)*(-1);
}
driverMoney=driverMoney*(-1);
}
var companyMoney=driverMoney;
if(null!=wxMoney){
if($("#wxPlusMinus").val()==1){
wxMoney=Number(wxMoney)*(-1);
}
wxMoney=wxMoney*(-1);
companyMoney+=wxMoney;
}
if(companyMoney>0){
$("#companyMoney").html("+"+companyMoney);
}
else{
$("#companyMoney").html("<font color='red'>"+companyMoney+"</font>");
}
}
$(document).ready(function(){
$("#tab2click").click(function(){
initialize();
//if(null!=points && points.length>=1){
//setTimeout(function(){
//map.panTo(points[0]);
//}, 1000);
//}
});
$("#modifyCash").click(function(){
//$("#modifyCash").hide();
//$("#cash_span").hide();
//$("#cash_input").show().focus();
//$("#modifyCash_ok").show();
$('#dialog_modifyCash').modal();
});
$("#modifyCash_ok").click(function(){
//var reg=/^\+?[0-9][0-9]*$/
//if(!reg.test($("#cash_input").val())){
// $.scojs_message('无效的金额，金额必须为零或正整数', $.scojs_message.TYPE_ERROR);
// return;
//}
//var confirm = $.scojs_confirm({
//content: "确认要将工单金额修改为"+$("#cash_input").val()+"元吗？",
//action:modifyCashAction
//});
//confirm.show();
// $('#dialog_modifyCash').modal();
});
//余额 增加/减少
$("#driver_virtual_plusminus").click(function(){
if($(this).find("span").hasClass("glyphicon-plus")){
$(this).find("span").removeClass("glyphicon-plus").addClass("glyphicon-minus");
$("#driverPlusMinus").val(1);
}
else{
$(this).find("span").removeClass("glyphicon-minus").addClass("glyphicon-plus");
$("#driverPlusMinus").val(0);
}
changeCompanyMoney();
});
$("#member_virtual_plusminus").click(function(){
if($(this).find("span").hasClass("glyphicon-plus")){
$(this).find("span").removeClass("glyphicon-plus").addClass("glyphicon-minus");
$("#memberPlusMinus").val(1);
}
else{
$(this).find("span").removeClass("glyphicon-minus").addClass("glyphicon-plus");
$("#memberPlusMinus").val(0);
}
});
$("#wx_virtual_plusminus").click(function(){
if($(this).find("span").hasClass("glyphicon-plus")){
$(this).find("span").removeClass("glyphicon-plus").addClass("glyphicon-minus");
$("#wxPlusMinus").val(1);
}
else{
$(this).find("span").removeClass("glyphicon-minus").addClass("glyphicon-plus");
$("#wxPlusMinus").val(0);
}
changeCompanyMoney();
});
//推荐金额
$("#newCash").change(function(){
var reg=/^\+?[0-9][0-9]*$/
if(!reg.test($("#newCash").val())){
$.scojs_message('无效的金额，修改后金额必须为整数', $.scojs_message.TYPE_ERROR);
return;
}
$.get('/order/getTuijianMoney',{'id':3061,'cash':$("#newCash").val()},function(data){
if(data.success){
if(data.map){
var driverMoney=data.map.driverMoney;
var memberMoney=data.map.memberMoney;
var wxMoney=data.map.wxMoney;
var companyMoney=data.map.driverMoney;
if(driverMoney>=0){
$("#driverMoney").val(driverMoney);
$("#driver_virtual_plusminus").find("span").removeClass("glyphicon-minus").addClass("glyphicon-plus");
$("#driverPlusMinus").val(0);
}
else{
$("#driverMoney").val(-driverMoney);
$("#driver_virtual_plusminus").find("span").removeClass("glyphicon-plus").addClass("glyphicon-minus");
$("#driverPlusMinus").val(1);
}
if(memberMoney>=0){
$("#memberMoney").val(memberMoney);
$("#member_virtual_plusminus").find("span").removeClass("glyphicon-minus").addClass("glyphicon-plus");
$("#memberPlusMinus").val(0);
}
else{
$("#memberMoney").val(-memberMoney);
$("#member_virtual_plusminus").find("span").removeClass("glyphicon-plus").addClass("glyphicon-minus");
$("#memberPlusMinus").val(1);
}
if(null!=wxMoney){
if(wxMoney>=0){
$("#wxMoney").val(wxMoney);
$("#wx_virtual_plusminus").find("span").removeClass("glyphicon-minus").addClass("glyphicon-plus");
$("#wxPlusMinus").val(0);
}
else{
$("#wxMoney").val(-wxMoney);
$("#wx_virtual_plusminus").find("span").removeClass("glyphicon-plus").addClass("glyphicon-minus");
$("#wxPlusMinus").val(1);
}
companyMoney+=wxMoney;
}
if(companyMoney>0){
$("#companyMoney").html("<font color='red'>"+(-1*companyMoney)+"</font>");
}
else{
$("#companyMoney").html("+"+(-1*companyMoney));
}
}
else{
//混合支付
}
}
else{
$.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
}
});
});
//金额改变
$("#driverMoney").change(function(){
changeCompanyMoney();
});
$("#wxMoney").change(function(){
changeCompanyMoney();
});
$("#close_modal_modifyCash").click(function(){
$('#dialog_modifyCash').modal("hide");
});
$("#ok_modal_modifyCash").click(function(){
var reg=/^\+?[0-9][0-9]*(\.\d{1,2})?$/
if(!reg.test($("#newCash").val()) || !reg.test($("#driverMoney").val()) || !reg.test($("#memberMoney").val())){
$.scojs_message('无效的金额，余额变动金额最多保留2位小数', $.scojs_message.TYPE_ERROR);
return;
}
if($("#dialog_modifyCash_content").val()==""){
$.scojs_message('请填写修改原因', $.scojs_message.TYPE_ERROR);
return false;
}
var message="";
if($("#driverPlusMinus").val()==0){
message+="救援人员余额将增加"+$("#driverMoney").val()+"元，";
}
else{
message+="救援人员余额将减少"+$("#driverMoney").val()+"元，";
}
if($("#memberPlusMinus").val()==0){
message+="客户余额将增加"+$("#memberMoney").val()+"元。";
}
else{
message+="客户余额将减少"+$("#memberMoney").val()+"元。";
}
var confirm = $.scojs_confirm({
content: "确认要将工单金额从39元修改为"+$("#newCash").val()+"元吗？"+message,
action:function(){
$("#ok_modal_modifyCash").attr("disabled",true);
$.post('/order/modifyCash',$("#modify_form").serialize(),function(data){
if(data.success){
$.scojs_message('工单金额修改成功', $.scojs_message.TYPE_OK);
//setTimeout(function(){
window.location.reload(true);
//}, 1000);
} else {
$("#ok_modal_modifyCash").attr("disabled",false);
$.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
}
},'json');
}
});
confirm.show();
});
});
</script>
<script type="text/javascript">
$("#nav_header").children().removeClass("active");
$("#nav_header_order").addClass("active");
</script>
</body></html>