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
<link rel="stylesheet" href="css/datetimepicker.css" tppabs="css/datetimepicker.css">
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
<div style="width:43%;float:left;padding-left:15px;">
<div class="btn-group">
<a class="btn btn-default active" href="#">财务明细</a>
</div>
</div>
<div style="width:47%;float:left;padding-left:15px;">
<form class="form-inline" role="form">
<div class="form-group" style="width:20%;">
<input class="form-control" id="startTime" name="startTime" value="" placeholder="开始时间" readonly="readonly" type="text">
</div>
<div class="form-group" style="width:20%;">
<input class="form-control" id="endTime" name="endTime" value="" placeholder="结束时间" readonly="readonly" type="text">
</div>
<div class="form-group" style="width:40%;">
<input type="text" class="form-control" style="width:100%;" name="param" value="" placeholder="流水号、对象、公司、备注">
</div>
<button type="submit" class="btn btn-default"><i class="icon-search"></i>&nbsp;搜索</button>
</form>
</div>
<div style="width:8%;float:left;">
</div>
</div>
<div class="row margin-top">
<div style="float:right;margin-right:15px;">
<div class="btn-group" style="margin-left:10px;">
<p class="form-control-static">全部收入：<span style="color:#ff950b;font-weight:700;">39</span></p>
</div>
<div class="btn-group" style="margin-left:10px;">
<p class="form-control-static">本年收入：<span style="color:#ff950b;font-weight:700;">39</span></p>
</div>
<div class="btn-group" style="margin-left:10px;">
<p class="form-control-static">本月收入：<span style="color:#ff950b;font-weight:700;">39</span></p>
</div>
<div class="btn-group" style="margin-left:10px;">
<p class="form-control-static">上月收入：<span style="color:#ff950b;font-weight:700;">0</span></p>
</div>
<div class="btn-group" style="margin-left:10px;">
<p class="form-control-static">昨日收入：<span style="color:#ff950b;font-weight:700;">0</span></p>
</div>
</div>
</div>
<div class="row margin-top">
<div class="col-xs-12">
<div class="panel panel-primary">
<div class="table-responsive">
<table class="table table-hover table-striped">
<thead>
<tr style="font-size:14px;">
<th>状态</th>
<th>流水号</th>
<th>金额</th>
<th>对象</th>
<th>时间</th>
<th>备注</th>
<th>操作</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<span class="label label-success">已审</span>
</td>
<td>0201201501100042</td>
<td style="color:green;font-weight:700;">
39
</td>
<td>先生/女士</td>
<td>2015/01/10 21:02</td>
<td style="max-width:500px;">工单号【<a target="_blank" href="order_detail.jsp" tppabs="order_detail.jsp">0401201501100026</a>】收入</td>
<td>
</td>
</tr>
</tbody>
</table>
<ul class="pagination pull-right pagination-sm">
<li><a>共 1 条数据</a></li>
</ul>
</div>
</div>
</div>
</div>
<form class="form-horizontal" method="post">
<div class="modal fade" id="dialog_audit">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
<h4 class="modal-title">确认要审核通过吗</h4>
</div>
<div class="modal-body">
<input type="hidden" name="id" id="dialog_audit_id">
<div class="form-group">
<div class="col-sm-10">
金额：<input type="text" class="form-control" id="dialog_audit_money" name="money" required="">
</div>
</div>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-primary" id="ok_modal_audit" action="javascript:if(confirm('http://erescue.wabestway.com:8080/financialrecord/audit  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ������·������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://erescue.wabestway.com:8080/financialrecord/audit'" tppabs="http://erescue.wabestway.com:8080/financialrecord/audit">提交</button>
<button type="button" class="btn btn-default" id="close_modal_audit">关闭</button>
</div>
</div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div>
</form>
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
<script type="text/javascript">
window.daijia = {
ctx:'',
userId:'266'
};
</script>
<script src="js/pushmessage.js" tppabs="js/pushmessage.js"></script>
<script src="js/bootstrap-datetimepicker.min.js" tppabs="js/bootstrap-datetimepicker.min.js"></script>
<script src="js/bootstrap-datetimepicker.zh-CN.js" tppabs="js/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
var thisButton;
function deleteFinancialRecord() {
$.post('/financialrecord/delete',{'id':thisButton.attr("data-value")},function(data){
if(data.success){
thisButton.parent().parent().remove();
$.scojs_message('财务记录删除成功', $.scojs_message.TYPE_OK);
} else {
$.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
}
},'json');
}
$(document).ready(function(){
$("#startTime").datetimepicker({ format: 'yyyy-mm-dd', language: 'zh-CN', minView: 'month', pickDate: true, pickTime: false, inputMask: false, autoclose: true });
$("#endTime").datetimepicker({ format: 'yyyy-mm-dd', language: 'zh-CN', minView: 'month', pickDate: true, pickTime: false, inputMask: false, autoclose: true });
$(".deletethis").click(function(){
thisButton = $(this);
var confirm = $.scojs_confirm({
content: "你真的要删除该财务记录吗？",
action:deleteFinancialRecord
});
confirm.show();
});
//审核
$(".auditthis").click(function(){
thisButton = $(this);
$("#dialog_audit_id").val(thisButton.attr("data-value"));
$("#dialog_audit_money").val(thisButton.attr("data-money"));
$("#ok_modal_audit").attr("disabled",false);
$('#dialog_audit').modal();
});
$("#close_modal_audit").click(function(){
$('#dialog_audit').modal("hide");
});
$("#ok_modal_audit").click(function(){
$(this).attr("disabled",true);
var money=$("#dialog_audit_money").val();
var reg=/^(-?\d+)(.[0-9]{0,2})?$/;
if(!reg.test(money)){
$.scojs_message('无效的金额，金额必须为数字', $.scojs_message.TYPE_ERROR);
$("#ok_modal_audit").attr("disabled",false);
return;
}
$.post($(this).attr("action"),{'id':thisButton.attr("data-value"),'money':money},function(data){
if(data.success){
$.scojs_message("审核完成", $.scojs_message.TYPE_OK);
window.location.reload(true);
}
else{
$.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
}
},'json');
});
});
</script>
<script type="text/javascript">
$("#nav_header").children().removeClass("active");
$("#nav_header_financial").addClass("active");
</script>
<div class="datetimepicker datetimepicker-dropdown-bottom-right dropdown-menu" style="left: 604.28125px; z-index: 1090;"><div class="datetimepicker-minutes" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">10 一月 2015</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="minute">21:00</span><span class="minute">21:05</span><span class="minute">21:10</span><span class="minute">21:15</span><span class="minute">21:20</span><span class="minute">21:25</span><span class="minute active">21:30</span><span class="minute">21:35</span><span class="minute">21:40</span><span class="minute">21:45</span><span class="minute">21:50</span><span class="minute">21:55</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-hours" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">10 一月 2015</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="hour">0:00</span><span class="hour">1:00</span><span class="hour">2:00</span><span class="hour">3:00</span><span class="hour">4:00</span><span class="hour">5:00</span><span class="hour">6:00</span><span class="hour">7:00</span><span class="hour">8:00</span><span class="hour">9:00</span><span class="hour">10:00</span><span class="hour">11:00</span><span class="hour">12:00</span><span class="hour">13:00</span><span class="hour">14:00</span><span class="hour">15:00</span><span class="hour">16:00</span><span class="hour">17:00</span><span class="hour">18:00</span><span class="hour">19:00</span><span class="hour">20:00</span><span class="hour active">21:00</span><span class="hour">22:00</span><span class="hour">23:00</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-days" style="display: block;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">一月 2015</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr><tr><th class="dow">日</th><th class="dow">一</th><th class="dow">二</th><th class="dow">三</th><th class="dow">四</th><th class="dow">五</th><th class="dow">六</th></tr></thead><tbody><tr><td class="day old">28</td><td class="day old">29</td><td class="day old">30</td><td class="day old">31</td><td class="day">1</td><td class="day">2</td><td class="day">3</td></tr><tr><td class="day">4</td><td class="day">5</td><td class="day">6</td><td class="day">7</td><td class="day">8</td><td class="day">9</td><td class="day active">10</td></tr><tr><td class="day">11</td><td class="day">12</td><td class="day">13</td><td class="day">14</td><td class="day">15</td><td class="day">16</td><td class="day">17</td></tr><tr><td class="day">18</td><td class="day">19</td><td class="day">20</td><td class="day">21</td><td class="day">22</td><td class="day">23</td><td class="day">24</td></tr><tr><td class="day">25</td><td class="day">26</td><td class="day">27</td><td class="day">28</td><td class="day">29</td><td class="day">30</td><td class="day">31</td></tr><tr><td class="day new">1</td><td class="day new">2</td><td class="day new">3</td><td class="day new">4</td><td class="day new">5</td><td class="day new">6</td><td class="day new">7</td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">2015</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="month active">一月</span><span class="month">二月</span><span class="month">三月</span><span class="month">四月</span><span class="month">五月</span><span class="month">六月</span><span class="month">七月</span><span class="month">八月</span><span class="month">九月</span><span class="month">十月</span><span class="month">十一月</span><span class="month">十二月</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">2010-2019</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="year old">2009</span><span class="year">2010</span><span class="year">2011</span><span class="year">2012</span><span class="year">2013</span><span class="year">2014</span><span class="year active">2015</span><span class="year">2016</span><span class="year">2017</span><span class="year">2018</span><span class="year">2019</span><span class="year old">2020</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div></div><div class="datetimepicker datetimepicker-dropdown-bottom-right dropdown-menu" style="left: 731.109375px; z-index: 1130;"><div class="datetimepicker-minutes" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">10 一月 2015</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="minute">21:00</span><span class="minute">21:05</span><span class="minute">21:10</span><span class="minute">21:15</span><span class="minute">21:20</span><span class="minute">21:25</span><span class="minute active">21:30</span><span class="minute">21:35</span><span class="minute">21:40</span><span class="minute">21:45</span><span class="minute">21:50</span><span class="minute">21:55</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-hours" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">10 一月 2015</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="hour">0:00</span><span class="hour">1:00</span><span class="hour">2:00</span><span class="hour">3:00</span><span class="hour">4:00</span><span class="hour">5:00</span><span class="hour">6:00</span><span class="hour">7:00</span><span class="hour">8:00</span><span class="hour">9:00</span><span class="hour">10:00</span><span class="hour">11:00</span><span class="hour">12:00</span><span class="hour">13:00</span><span class="hour">14:00</span><span class="hour">15:00</span><span class="hour">16:00</span><span class="hour">17:00</span><span class="hour">18:00</span><span class="hour">19:00</span><span class="hour">20:00</span><span class="hour active">21:00</span><span class="hour">22:00</span><span class="hour">23:00</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-days" style="display: block;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">一月 2015</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr><tr><th class="dow">日</th><th class="dow">一</th><th class="dow">二</th><th class="dow">三</th><th class="dow">四</th><th class="dow">五</th><th class="dow">六</th></tr></thead><tbody><tr><td class="day old">28</td><td class="day old">29</td><td class="day old">30</td><td class="day old">31</td><td class="day">1</td><td class="day">2</td><td class="day">3</td></tr><tr><td class="day">4</td><td class="day">5</td><td class="day">6</td><td class="day">7</td><td class="day">8</td><td class="day">9</td><td class="day active">10</td></tr><tr><td class="day">11</td><td class="day">12</td><td class="day">13</td><td class="day">14</td><td class="day">15</td><td class="day">16</td><td class="day">17</td></tr><tr><td class="day">18</td><td class="day">19</td><td class="day">20</td><td class="day">21</td><td class="day">22</td><td class="day">23</td><td class="day">24</td></tr><tr><td class="day">25</td><td class="day">26</td><td class="day">27</td><td class="day">28</td><td class="day">29</td><td class="day">30</td><td class="day">31</td></tr><tr><td class="day new">1</td><td class="day new">2</td><td class="day new">3</td><td class="day new">4</td><td class="day new">5</td><td class="day new">6</td><td class="day new">7</td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">2015</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="month active">一月</span><span class="month">二月</span><span class="month">三月</span><span class="month">四月</span><span class="month">五月</span><span class="month">六月</span><span class="month">七月</span><span class="month">八月</span><span class="month">九月</span><span class="month">十月</span><span class="month">十一月</span><span class="month">十二月</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">2010-2019</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="year old">2009</span><span class="year">2010</span><span class="year">2011</span><span class="year">2012</span><span class="year">2013</span><span class="year">2014</span><span class="year active">2015</span><span class="year">2016</span><span class="year">2017</span><span class="year">2018</span><span class="year">2019</span><span class="year old">2020</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div></div></body></html>