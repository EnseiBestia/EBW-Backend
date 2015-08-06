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
<style type="text/css">.BMap_mask{background:transparent url("../../api0.map.bdimg.com/images/blank.gif");}.BMap_noscreen{display:none;}.BMap_button{cursor:pointer;}.BMap_zoomer{background-image:url(http://api0.map.bdimg.com/images/mapctrls1d3.gif);background-repeat:no-repeat;overflow:hidden;font-size:1px;position:absolute;width:7px;height:7px;}.BMap_stdMpCtrl div{position:absolute;}.BMap_stdMpPan{width:44px;height:44px;overflow:hidden;background:url("../../api0.map.bdimg.com/images/mapctrls2d0.png") no-repeat;}.BMap_ie6 .BMap_stdMpPan{background:none;}.BMap_ie6 .BMap_smcbg{left:0;width:44px;height:464px;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src="http://api0.map.bdimg.com/images/mapctrls2d0.png");}.BMap_ie6 .BMap_stdMpPanBg{z-index:-1;}.BMap_stdMpPan .BMap_button{height:15px;width:15px;}.BMap_panN,.BMap_panW,.BMap_panE,.BMap_panS{overflow:hidden;}.BMap_panN{left:14px;top:0;}.BMap_panW{left:1px;top:12px;}.BMap_panE{left:27px;top:12px;}.BMap_panS{left:14px;top:25px;}.BMap_stdMpZoom{top:45px;overflow:hidden;}.BMap_stdMpZoom .BMap_button{width:22px;height:21px;left:12px;overflow:hidden;background-image:url(http://api0.map.bdimg.com/images/mapctrls2d0.png);background-repeat:no-repeat;z-index:10;}.BMap_ie6 .BMap_stdMpZoom .BMap_button{background:none;}.BMap_stdMpZoomIn{background-position:0 -221px;}.BMap_stdMpZoomOut{background-position:0 -265px;}.BMap_ie6 .BMap_stdMpZoomIn div{left:0;top:-221px;}.BMap_ie6 .BMap_stdMpZoomOut div{left:0;top:-265px;}.BMap_stdMpType4 .BMap_stdMpZoom .BMap_button{left:0;overflow:hidden;background:-webkit-gradient(linear,50% 0,50% 100%,from(rgba(255,255,255,0.85)),to(rgba(217,217,217,0.85)));z-index:10;-webkit-border-radius:22px;width:34px;height:34px;border:1px solid rgba(255,255,255,0.5);-webkit-box-shadow:0 2px 3.6px #CCC;display:-webkit-box;-webkit-box-align:center;-webkit-box-pack:center;-webkit-box-sizing:border-box;}.BMap_stdMpType4 .BMap_smcbg{position:static;background:url("../../api0.map.bdimg.com/images/mapctrls2d0_mb.png") 0 0 no-repeat;-webkit-background-size:24px 32px;}.BMap_stdMpType4 .BMap_stdMpZoomIn{background-position:0 0;}.BMap_stdMpType4 .BMap_stdMpZoomIn .BMap_smcbg{width:24px;height:24px;background-position:0 0;}.BMap_stdMpType4 .BMap_stdMpZoomOut{background-position:0 0;}.BMap_stdMpType4 .BMap_stdMpZoomOut .BMap_smcbg{width:24px;height:6px;background-position:0 -25px;}.BMap_stdMpSlider{width:37px;top:18px;}.BMap_stdMpSliderBgTop{left:18px;width:10px;overflow:hidden;background:url(http://api0.map.bdimg.com/images/mapctrls2d0.png) no-repeat -23px -226px;}.BMap_stdMpSliderBgBot{left:19px;height:8px;width:10px;top:124px;overflow:hidden;background:url("../../api0.map.bdimg.com/images/mapctrls2d0.png") no-repeat -33px bottom;}.BMap_ie6 .BMap_stdMpSliderBgTop,.BMap_ie6 .BMap_stdMpSliderBgBot{background:none;}.BMap_ie6 .BMap_stdMpSliderBgTop div{left:-23px;top:-226px;}.BMap_ie6 .BMap_stdMpSliderBgBot div{left:-33px;bottom:0;}.BMap_stdMpSliderMask{height:100%;width:24px;left:10px;cursor:pointer;}.BMap_stdMpSliderBar{height:11px;width:19px;left:13px;top:80px;overflow:hidden;background:url(http://api0.map.bdimg.com/images/mapctrls2d0.png) no-repeat 0 -309px;}.BMap_stdMpSliderBar.h{background:url("../../api0.map.bdimg.com/images/mapctrls2d0.png") no-repeat 0 -320px;}.BMap_ie6 .BMap_stdMpSliderBar,.BMap_ie6 .BMap_stdMpSliderBar.h{background:none;}.BMap_ie6 .BMap_stdMpSliderBar div{top:-309px;}.BMap_ie6 .BMap_stdMpSliderBar.h div{top:-320px;}.BMap_zlSt,.BMap_zlCity,.BMap_zlProv,.BMap_zlCountry{position:absolute;left:34px;height:21px;width:28px;background-image:url(http://api0.map.bdimg.com/images/mapctrls2d0.png);background-repeat:no-repeat;font-size:0;cursor:pointer;}.BMap_ie6 .BMap_zlSt,.BMap_ie6 .BMap_zlCity,.BMap_ie6 .BMap_zlProv,.BMap_ie6 .BMap_zlCountry{background:none;overflow:hidden;}.BMap_zlHolder{display:none;position:absolute;top:0;}.BMap_zlHolder.hvr{display:block;}.BMap_zlSt{background-position:0 -380px;top:21px;}.BMap_zlCity{background-position:0 -401px;top:52px;}.BMap_zlProv{background-position:0 -422px;top:76px;}.BMap_zlCountry{background-position:0 -443px;top:100px;}.BMap_ie6 .BMap_zlSt div{top:-380px;}.BMap_ie6 .BMap_zlCity div{top:-401px;}.BMap_ie6 .BMap_zlProv div{top:-422px;}.BMap_ie6 .BMap_zlCountry div{top:-443px;}.BMap_stdMpType1 .BMap_stdMpSlider,.BMap_stdMpType2 .BMap_stdMpSlider,.BMap_stdMpType3 .BMap_stdMpSlider,.BMap_stdMpType4 .BMap_stdMpSlider,.BMap_stdMpType2 .BMap_stdMpZoom,.BMap_stdMpType3 .BMap_stdMpPan,.BMap_stdMpType4 .BMap_stdMpPan{display:none;}.BMap_stdMpType3 .BMap_stdMpZoom{top:0;}.BMap_stdMpType4 .BMap_stdMpZoom{top:0;}.BMap_cpyCtrl a{font-size:11px;color:#7979CC;}.BMap_scaleCtrl{height:23px;overflow:hidden;}.BMap_scaleCtrl div.BMap_scaleTxt{font-size:11px;font-family:Arial,sans-serif;}.BMap_scaleCtrl div{position:absolute;overflow:hidden;}.BMap_scaleHBar img,.BMap_scaleLBar img,.BMap_scaleRBar img{position:absolute;width:37px;height:442px;left:0;}.BMap_scaleHBar{width:100%;height:5px;font-size:0;bottom:0;}.BMap_scaleHBar img{top:-437px;width:100%;}.BMap_scaleLBar,.BMap_scaleRBar{width:3px;height:9px;bottom:0;font-size:0;z-index:1;}.BMap_scaleLBar img{top:-427px;left:0;}.BMap_scaleRBar img{top:-427px;left:-5px;}.BMap_scaleLBar{left:0;}.BMap_scaleRBar{right:0;}.BMap_scaleTxt{text-align:center;width:100%;cursor:default;line-height:18px;}.BMap_omCtrl{background-color:#fff;overflow:hidden;}.BMap_omOutFrame{position:absolute;width:100%;height:100%;left:0;top:0;}.BMap_omInnFrame{position:absolute;border:1px solid #999;background-color:#ccc;overflow:hidden;}.BMap_omMapContainer{position:absolute;overflow:hidden;width:100%;height:100%;left:0;top:0;}.BMap_omViewMv{border-width:1px;border-style:solid;border-left-color:#84b0df;border-top-color:#adcff4;border-right-color:#274b8b;border-bottom-color:#274b8b;position:absolute;z-index:600;}.BMap_omViewInnFrame{border:1px solid #3e6bb8;}.BMap_omViewMask{width:1000px;height:1000px;position:absolute;left:0;top:0;background-color:#68c;opacity:.2;filter:progid:DXImageTransform.Microsoft.Alpha(opacity=20);}.BMap_omBtn{height:13px;width:13px;position:absolute;cursor:pointer;overflow:hidden;background:url("../../api0.map.bdimg.com/images/mapctrls1d3.gif") no-repeat;z-index:1210;}.anchorBR .BMap_omOutFrame{border-top:1px solid #999;border-left:1px solid #999;}.quad4 .BMap_omBtn{background-position:-26px -27px;}.quad4 .BMap_omBtn.hover{background-position:0 -27px;}.quad4 .BMap_omBtn.BMap_omBtnClosed{background-position:-39px -27px;}.quad4 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:-13px -27px;}.anchorTR .BMap_omOutFrame{border-bottom:1px solid #999;border-left:1px solid #999;}.quad1 .BMap_omBtn{background-position:-39px -41px;}.quad1 .BMap_omBtn.hover{background-position:-13px -41px;}.quad1 .BMap_omBtn.BMap_omBtnClosed{background-position:-26px -41px;}.quad1 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:0 -41px;}.anchorBL .BMap_omOutFrame{border-top:1px solid #999;border-right:1px solid #999;}.quad3 .BMap_omBtn{background-position:-27px -40px;}.quad3 .BMap_omBtn.hover{background-position:-1px -40px;}.quad3 .BMap_omBtn.BMap_omBtnClosed{background-position:-40px -40px;}.quad3 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:-14px -40px;}.anchorTL .BMap_omOutFrame{border-bottom:1px solid #999;border-right:1px solid #999;}.quad2 .BMap_omBtn{background-position:-40px -28px;}.quad2 .BMap_omBtn.hover{background-position:-14px -28px;}.quad2 .BMap_omBtn.BMap_omBtnClosed{background-position:-27px -28px;}.quad2 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:-1px -28px;}.anchorR .BMap_omOutFrame{border-bottom:1px solid #999;border-left:1px solid #999;border-top:1px solid #999;}.anchorL .BMap_omOutFrame{border-bottom:1px solid #999;border-right:1px solid #999;border-top:1px solid #999;}.anchorB .BMap_omOutFrame{border-top:1px solid #999;border-left:1px solid #999;border-right:1px solid #999;}.anchorT .BMap_omOutFrame{border-bottom:1px solid #999;border-right:1px solid #999;border-left:1px solid #999;}.anchorNon .BMap_omOutFrame,.withOffset .BMap_omOutFrame{border:1px solid #999;}.BMap_zoomMask0,.BMap_zoomMask1{position:absolute;left:0;top:0;width:100%;height:100%;background:transparent url(http://api0.map.bdimg.com/images/blank.gif);z-index:1000;}.BMap_contextMenu{position:absolute;border-top:1px solid #adbfe4;border-left:1px solid #adbfe4;border-right:1px solid #8ba4d8;border-bottom:1px solid #8ba4d8;padding:0;margin:0;width:auto;visibility:hidden;background:#fff;z-index:10000000;}.BMap_cmShadow{position:absolute;background:#000;opacity:.3;filter:alpha(opacity=30);visibility:hidden;z-index:9000000;}div.BMap_cmDivider{border-bottom:1px solid #adbfe4;font-size:0;padding:1px;margin:0 6px;}div.BMap_cmFstItem{margin-top:2px;}div.BMap_cmLstItem{margin-bottom:2px;}.BMap_shadow img{border:0 none;margin:0;padding:0;height:370px;width:1144px;}.BMap_pop .BMap_top{border-top:1px solid #ababab;background-color:#fff;}.BMap_pop .BMap_center{border-left:1px solid #ababab;border-right:1px solid #ababab;background-color:#fff;}.BMap_pop .BMap_bottom{border-bottom:1px solid #ababab;background-color:#fff;}.BMap_shadow,.BMap_shadow img,.BMap_shadow div{-moz-user-select:none;-webkit-user-select:none;}.BMap_checkbox{background:url("../../api0.map.bdimg.com/images/mapctrls1d3.gif");vertical-align:middle;display:inline-block;width:11px;height:11px;margin-right:4px;background-position:-14px 90px;}.BMap_checkbox.checked{background-position:-2px 90px;}.BMap_pop .BMap_top img,.BMap_pop .BMap_center img,.BMap_pop .BMap_bottom img{display:none;}@media print{.BMap_noprint{display:none;}.BMap_noscreen{display:block;}.BMap_mask{background:none;}.BMap_pop .BMap_top img,.BMap_pop .BMap_center img,.BMap_pop .BMap_bottom img{display:block;}}.BMap_vectex{cursor:pointer;width:11px;height:11px;position:absolute;background-repeat:no-repeat;background-position:0 0;}.BMap_vectex_nodeT{background-image:url(http://api0.map.bdimg.com/images/nodeT.gif);}.BMap_vectex_node{background-image:url("../../api0.map.bdimg.com/images/node.gif");}.iw{width:100%;-webkit-box-sizing:border-box;border:.3em solid transparent;-webkit-background-clip:padding;}.iw_rt{position:relative;height:46px;width:195px;-webkit-box-sizing:border-box;display:-webkit-box;-webkit-box-align:center;margin:2px 5px 0 2px;background-color:rgba(0,0,0,0.8);-webkit-box-shadow:2px 2px 7px rgba(0,0,0,0.3);-webkit-border-radius:2px;color:#fff;}.iw_rt:after{content:"";position:absolute;left:50%;bottom:-8px;width:0;height:0;border-left:5px solid transparent;border-top:8px solid rgba(0,0,0,0.8);border-right:5px solid transparent;margin:0 0 0 -6px;}.iw_s{text-align:center;vertical-align:middle;height:100%;-webkit-box-sizing:border-box;}.iw_rt .iw_s1{color:#cbcbcb;}.iw_rt b{color:#fff;font-weight:bold;}.iw_rt_gr{margin-left:-4px;}.iw_busline{margin:32px 0 0 -3px;}.iw_busline .iw_cc{text-align:center;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;padding:0 6px;}.iw_r{-webkit-box-ordinal-group:3;}.iw_r,.iw_l{height:100%;font-size:4.5em;text-align:center;color:#747474;border:none;-webkit-box-sizing:border-box;-webkit-border-radius:0;line-height:.7em;border:1px solid rgba(255,255,255,0.2);width:41px;}.iw_r{border-style:none none none solid;}.iw_l{border-style:none solid none none;}.iw_search,.iw_l{background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAAlCAYAAAAuqZsAAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ bWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6 eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNl SUQ9InhtcC5paWQ6QjA3NjMyREJDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiIHhtcE1NOkRvY3Vt ZW50SUQ9InhtcC5kaWQ6QjA3NjMyRENDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiPiA8eG1wTU06 RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCMDc2MzJEOUM3NDYxMUUxOUFB QzlDOUJENkY4NkJCRiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCMDc2MzJEQUM3NDYxMUUx OUFBQzlDOUJENkY4NkJCRiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1w bWV0YT4gPD94cGFja2V0IGVuZD0iciI/PllB9T8AAAKuSURBVHjaxFjRcdpAEAX+mVEqiFxB5AoQ HZAKElcArsBWBSgVQCoAVwCuwEoFlivwGQpI7jKrzGXn7ep0EsPO7BjLp/O73bdv9xifTqdRpCXW c+sz65n1lNy3mvzZemX9aN34C6bTKdx8HAHMgVlaX0QeaGv9J4EcBJgD9EA/hzAH7N4Cq/oAW1tf KX+vKEXP7PlMSLFvhQX32BWY49GBOIRO7FKy57wBlnoUQHu5yJX+g4mymdvgFWzkAM3JtwGgmiJw a2/pvQoEYBQCLKNI8RfuaeNjT245gAUdqgHdmkqUPiOctLdJVYkithkAVO/K5cC+M30KAZVSxboo /ybnn1eIR5r5qUyI7P4GX6nqJHskbQsxQ7wqu6aSn2qrgHLrXjqAat5ZC0WlRuzVE0J3uhtBCjRt a3qjX92JIMiOIqYtYgumzpo+7RRtu/E0zvknokMF5GgdQv4Ze/5DWL8CFVe2aNuedGsLCi1vS+WL F4WKNkL2Dnh414FnO1b1R5vKuRaxjKUF2YKBqjuCGtF6nyL5+XxOJWCcL2/CpjzdRYRuGpDShQQs ARUj9U/OnRh7Yr9/CW1JXU4fYxXoHIMCu+iB+gBLIt/LgShDYCYktGCDfCBgvyRgVQgZwTy/jIzy EnQNMZV1QCT4bJ+3XFCkS81/WijdkiYAdSak04BWtabWEmIbsNZYgU00YE+gjyErQeo31GpShVMH Yc+/dwsEzh97/D6ojT2ZMlM1XwN8WP9Ma7NAbZvbtBoEjE+jBT2TusCu5SIbI7z/wLWN1rdKi0o6 cqwTuAmYyTm5NQW/82atWvlnBbo7apxD98qDJxl7mkC76JQ2Qm0CI1xKF95Gb4oLXHJDwJlxjy/u LgruGtNFM8lqnNtfK2JqN3CVeW1gzWj9jThd0xd59R8BBgAAiefGO1Bt1gAAAABJRU5ErkJggg==") no-repeat 50% 50%;-webkit-background-size:19px 19px;}.iw_line_s,.iw_r{background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACUAAAAmCAYAAABDClKtAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ bWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6 eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNl SUQ9InhtcC5paWQ6QjA3NjMyREZDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiIHhtcE1NOkRvY3Vt ZW50SUQ9InhtcC5kaWQ6QjA3NjMyRTBDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiPiA8eG1wTU06 RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCMDc2MzJEREM3NDYxMUUxOUFB QzlDOUJENkY4NkJCRiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCMDc2MzJERUM3NDYxMUUx OUFBQzlDOUJENkY4NkJCRiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1w bWV0YT4gPD94cGFja2V0IGVuZD0iciI/PqheQ+MAAAEtSURBVHja7JftDYIwEIbB8JeEUXACZQPd oGygE+gGxAnQEZzAOgEdwREIDKBXUgjBIqW5Npj0kvcHpG0erveFX1WVZ8l2oBhEhRoLw/BroW8J KgeR3vMVlI5BrSwAHQZAnngmYxtMe4oIL41ZAp6iNqF4/BQTa0oBxmxAcaAHKFJY+wKtAaw0CRUJ oHjGHiY8VpqCKmYCdRkJUKmJ7Ms1gZqkqOs6w/bUGXRCOGePCcXjaItwDsW8PoZ0zhM70IeeyiZi jH/Isf+CF9MAOdCppDj+LJ6yim6j9802B6VqQa818BFjY6AHakHp9Crj15ctCaiFIi7Q/wCKLRHq vjSoVNKWunH4rTBDv5Cv7NKeKfvvU2nINzHAuexzUA7KQTkoB6UxDicKvc+qfQQYABaiUBxugCsr AAAAAElFTkSuQmCC") no-repeat 50% 50%;-webkit-background-size:19px 19px;}.iw_line{height:64px;width:228px;padding:0 11px;line-height:20px;}.iw_bustrans .iw_cc{text-align:center;}.iw_c{color:#FFFFFF;text-decoration:none;overflow:hidden;display:-webkit-box;-webkit-box-align:center;-webkit-box-flex:1;}.iw_cc{-webkit-box-sizing:border-box;width:100%;border:none;}.gray_background{filter:alpha(opacity=50);-moz-opacity:0.5;-khtml-opacity:0.5;opacity: 0.5} .light_gray_background {filter:alpha(opacity=70);-moz-opacity:0.7;-khtml-opacity:0.7;opacity: 0.7} .panoInfoBox {cursor: pointer; } .panoInfoBox {position: relative; width: 323px; height: 101px; margin-bottom: 4px; cursor: pointer; } .panoInfoBox .panoInfoBoxTitleBg {width: 323px; height: 19px; position: absolute; left: 0; bottom: 0; z-index: 2; background-color: #000; opacity: .7; } .panoInfoBox .panoInfoBoxTitleContent {font-size: 12px; color: #fff; position: absolute; bottom: 2px; left: 5px; z-index: 3; text-decoration: none; } .RouteAddressOuterBkg{position:relative; padding: 32px 4px 4px 3px; background-color:#ffdd99; } .RouteAddressInnerBkg{padding: 3px 5px 8px 8px; background-color:#ffffff; } #RouteAddress_DIV1{margin-top: 5px; } .RouteAddressTip{position:absolute; width:100%; top:0px; text-align:center; height:30px; line-height:30px; color:#994c00; } .route_tip_con {position:absolute;top:145px;} .route_tip_con .route_tip{position:absolute;width:233px;height:29px;color:#803300;text-align:center;line-height:29px;border:#cc967a solid 1px;background:#fff2b2;z-index:100000;} .route_tip_con .route_tip span{position:absolute;top:0;right:0;_right:-1px;width:14px;height:13px;background:url("../../api0.map.bdimg.com/images/addrPage.png-v=20121107") no-repeat 0 -121px;cursor:pointer;} .route_tip_con .route_tip_shadow{width:233px;height:29px;  position:absolute;left:1px;top:1px;background:#505050;border:1px solid #505050;opacity:0.2;filter:alpha(opacity=20)} .sel_body_body_page{margin:5px 0} .sel_n{margin-top:5px;overflow:hidden;} .sel_n .sel_top{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -418px;height:4px;font-size:0px;} .sel_n .sel_body_top{height:32px;width:100%;background:url("../../api0.map.bdimg.com/images/addrPage.png-v=20121107") no-repeat 0 -41px;} .sel_n .sel_body_title{float:left;width:100%;height:31px;} .sel_n .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -79px -387px;} .sel_n .sel_body_name{height: 10px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_n .sel_body_button{float:left;width:55px;margin-left:-55px;padding-top:8px;} .sel_n .sel_body_button a{} .sel_n .sel_bottom{background:url("../../api0.map.bdimg.com/images/bgs.gif") no-repeat 0 -415px;height:4px;font-size:0px;} .sel_n .sel_body_body{padding:3px 0 0 0} .sel_n1{margin-top:5px;width:329px;overflow:hidden;} .sel_n1 .sel_top{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -418px;height:4px;font-size:0px;} .sel_n1 .sel_body_top{height:31px;width:100%;background:url("../../api0.map.bdimg.com/images/sel_body_n_top.gif") repeat-x;} .sel_n1 .sel_body_top{height:32px;width:100%;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 -41px} .sel_n1 .sel_body_title{float:left;width:100%;height:31px;cursor:pointer;} .sel_n1 .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url("../../api0.map.bdimg.com/images/bgs.gif") no-repeat -79px -387px;} .sel_n1 .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_n1 .sel_body_button{float:left;width:20px;height:31px;margin-left:-23px;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -253px -382px;overflow:hidden;zoom:1;cursor:pointer;} .sel_n1 .sel_body_button a{display:none;} .sel_n1 .sel_body_body{display:none} .sel_n1 .sel_bottom{background:url("../../api0.map.bdimg.com/images/bgs.gif") no-repeat 0 -415px;height:4px;font-size:0px;} .sel_y{margin-top:5px;overflow:hidden;} .sel_y .sel_top{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -439px;height:4px;zoom:1;font-size:0px;} .sel_y .sel_body_top{height:32px;width:100%;background:url("../../api0.map.bdimg.com/images/addrPage.png-v=20121107") no-repeat 0 0} .sel_y .sel_body_title{float:left;width:100%;height:31px;cursor:pointer;} .sel_y .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -167px -384px;} .sel_y .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#5B7BCB;} .sel_y .sel_body_button{float:left;width:20px;height:31px;margin-left:-20px;background:url("../../api0.map.bdimg.com/images/bgs.gif") no-repeat -269px -297px;cursor:pointer;} .sel_y .sel_body_button a{display:none;} .sel_y .sel_body_body{display:none;height:0px} .sel_y .sel_body_body_div{} .sel_y .sel_bottom{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -436px;height:4px;font-size:0px;} .sel_y .sel_body_body_page{display:none;height:0px;} .sel_x{margin-top:5px;width:329px;overflow:hidden;} .sel_x .sel_top{background:url("../../api0.map.bdimg.com/images/bgs.gif") no-repeat 0 -418px;height:4px;font-size:0px;} .sel_x .sel_body_top{height:32px;width:100%;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 -41px;} .sel_x .sel_body_title{float:left;width:100%;height:31px;} .sel_x .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url("../../api0.map.bdimg.com/images/bgs.gif") no-repeat -122px -384px;} .sel_x .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_x .sel_body_button{float:left;width:55px;margin-left:-55px;padding-top:8px;} .sel_x .sel_body_button a{} .sel_x .sel_body_body{} .sel_x .sel_body_body_div{padding:5px 5px 0 5px;} .sel_x .sel_bottom{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -415px;height:4px;font-size:0px;} .sel_x1{margin-top:5px;width:329px;overflow:hidden;} .sel_x1 .sel_top{background:url("../../api0.map.bdimg.com/images/bgs.gif") no-repeat 0 -418px;height:4px;font-size:0px;} .sel_x1 .sel_body_top{height:32px;width:100%;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 -41px} .sel_x1 .sel_body_title{float:left;width:100%;height:31px;cursor:pointer;} .sel_x1 .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url("../../api0.map.bdimg.com/images/bgs.gif") no-repeat -122px -384px;} .sel_x1 .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_x1 .sel_body_button{float:left;width:55px;height:31px;margin-left:-55px;} .sel_x1 .sel_body_button a{display:none;} .sel_x1 .sel_body_body{display:none;height:0px;} .sel_x1 .sel_body_body_div{padding:5px 5px 0 5px;} .sel_x1 .sel_bottom{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -415px;height:4px;font-size:0px;} .sel_body_citylist{height:100px;padding: 0 0 0 5px} .sel_body_resitem{table-layout:fixed;overflow-x:hidden;overflow-y:hidden;} .sel_body_resitem table {margin-right:5px;} .sel_body_resitem tr{cursor:pointer;} .sel_body_resitem th{padding-top:5px;padding-left:5px;text-align:left;vertical-align:top;width:22px;} .sel_body_resitem th div.iconbg{background:url("../../api0.map.bdimg.com/images/markers_new_ie6.png") no-repeat scroll 0 0;height:29px;width:24px;} .sel_body_resitem th div.icon{cursor:pointer} .sel_body_resitem th div#no_0_1, .sel_body_resitem th div#no_1_1{background-position:0 -64px} .sel_body_resitem th div#no_0_2, .sel_body_resitem th div#no_1_2{background-position:-24px -64px} .sel_body_resitem th div#no_0_3, .sel_body_resitem th div#no_1_3{background-position:-48px -64px} .sel_body_resitem th div#no_0_4, .sel_body_resitem th div#no_1_4{background-position:-72px -64px} .sel_body_resitem th div#no_0_5, .sel_body_resitem th div#no_1_5{background-position:-96px -64px} .sel_body_resitem th div#no_0_6, .sel_body_resitem th div#no_1_6{background-position:-120px -64px} .sel_body_resitem th div#no_0_7, .sel_body_resitem th div#no_1_7{background-position:-144px -64px} .sel_body_resitem th div#no_0_8, .sel_body_resitem th div#no_1_8{background-position:-168px -64px} .sel_body_resitem th div#no_0_9, .sel_body_resitem th div#no_1_9{background-position:-192px -64px} .sel_body_resitem th div#no_0_10, .sel_body_resitem th div#no_1_10{background-position:-216px -64px} .sel_body_resitem td{line-height:160%;padding:3px 0 3px 3px;vertical-align:top;} .sel_body_resitem div.ra_td_title{float:left;margin-right:40px;} .sel_body_resitem div.ra_td_button{float:right; width:40px;} .sel_body_resitem div.ra_td_button input{height:18px;font-size:12px;width:40px;} .sel_body_resitem div.clear{clear:both;height:0px;width:100%;} .sel_body_resitem td .selBtn {width:70px;height:29px;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat -21px -81px;text-align:center;line-height:29px;visibility:hidden;color:#b35900;display:inline-block;*display:inline;*zoom:1;} .sel_body_resitem td .list_street_view_poi {display:inline-block;float:none;margin-right:6px;position:static;*vertical-align:-3px;_vertical-align:-5px;*display:inline;*zoom:1;} .selInfoWndBtn {width:70px;height:29px;background:url("../../api0.map.bdimg.com/images/addrPage.png-v=20121107") no-repeat -21px -81px;text-align:center;line-height:29px;margin: 0 auto;cursor:pointer;color:#b35900} .sel_body_body td a{text-decoration: none; cursor: auto; } .sel_body_body td a:hover,.sel_body_body td a:focus{text-decoration:underline; }.panoInfoBox{cursor:pointer}.panoInfoBox{position:relative;width:323px;height:101px;margin-bottom:4px;cursor:pointer}.panoInfoBox .panoInfoBoxTitleBg{width:323px;height:19px;position:absolute;left:0;bottom:0;z-index:2;background-color:#000;opacity:.7}.panoInfoBox .panoInfoBoxTitleContent{font-size:12px;color:#fff;position:absolute;bottom:2px;left:5px;z-index:3;text-decoration:none}.pano_switch_left,.pano_switch_right{position:absolute;width:28px;height:28px;border:1px solid gray;cursor:pointer;background:url(http://api0.map.bdimg.com/images/panorama/switch_control.png) no-repeat}.pano_switch_left{background-position:-28px 0}.pano_switch_right{background-position:-28px -28px}.pano_switch_left:hover{background-position:0 0}.pano_switch_right:hover{background-position:0 -28px}.pano_switch_left.pano_switch_disable,.pano_switch_right.pano_switch_disable{background:none;border:none}.pano_poi_4,.pano_poi_2,.pano_poi_1{display:inline-block;width:16px;height:16px;vertical-align:middle;background:url("../../webmap1.map.bdimg.com/newmap/static/common/images/pano_whole/guide_icons_4b871b2.png") no-repeat;_background:url(http://webmap0.map.bdimg.com/newmap/static/common/images/pano_whole/guide_icons-8_71d5176.png) no-repeat;background-position:0 0}.pano_photo_arrow_l,.pano_photo_arrow_r{position:absolute;top:0;width:20px;height:100%;background:rgb(243,238,238)}.pano_photo_arrow_l{left:0}.pano_photo_arrow_r{right:0}.pano_arrow_r,.pano_arrow_l{display:inline-block;width:18px;height:18px;background:url("../../webmap0.map.bdimg.com/newmap/static/common/images/pano_whole/pano-icons_223a291.png") no-repeat;_background:url(http://webmap0.map.bdimg.com/newmap/static/common/images/pano_whole/pano-icons-8_0878d3c.png) no-repeat}.pano_arrow_l{background-position:0 -36px}.pano_arrow_r{background-position:-54px -36px}.pano_photo_arrow_l:hover .pano_arrow_l{background-position:-18px -36px}.pano_photo_arrow_r:hover .pano_arrow_r{background-position:-72px -36px}.pano_photo_arrow_l.pano_arrow_disable .pano_arrow_l{background-position:-36px -36px}.pano_photo_arrow_r.pano_arrow_disable .pano_arrow_r{background-position:-90px -36px}.pano_photo_item{position:relative;float:left;line-height:0;padding-left:8px}.pano_photo_decs{position:absolute;bottom:1px;left:0;padding:2px 0;text-indent:5px;margin-left:8px;display:inline-block;color:white;background:black;opacity:0.5;filter:alpha(opacity=50)9;text-overflow:ellipsis;overflow:hidden;white-space:nowrap}.pano_photo_item img{display:inline-block;border:solid 1px #ccd2dc;cursor:pointer}.pano_photo_item:hover img{border-color:rgb(0,94,252)}.pano_photo_item_seleted{position:absolute;top:0;left:-100000px;border:3px solid rgb(9,125,243)}</style></head>
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
<li class=""><a href="order_detail.jsp" tppabs="order_detail.jsp" data-toggle="tab">工单跟踪</a></li>
<li class="active"><a id="tab2click" href="order_trace.jsp" tppabs="order_trace.jsp" data-toggle="tab">工单轨迹</a></li>
</ul>
<div class="tab-content">
<div class="tab-pane" id="tab1">
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
<div class="tab-pane active" id="tab2">
<div class="row margin-top">
<div class="col-xs-12">
<div class="panel panel-default">
<div class="panel-heading">
工单轨迹
<input type="button" id="playcar" onclick="play()" class="button button-pill button-flat-blue button-tiny" value="开始回放" style="">
<input type="button" id="resetcar" onclick="reset()" class="button button-pill button-flat button-tiny" value="重置" style="">
<input type="button" id="distancetool" onclick="distance()" class="button button-pill button-flat-action button-tiny" value="测距" style="">
</div>
<div id="allmap" style="z-index: 0; height: 500px; overflow: hidden; position: relative; color: rgb(0, 0, 0); text-align: left; background-color: rgb(243, 241, 236);"><div style="overflow: visible; position: absolute; z-index: 0; left: 265px; top: -318px; cursor: url(http://api0.map.bdimg.com/images/openhand.cur) 8 8, default;"><div style="position: absolute; overflow: visible; z-index: -200; left: 645px; top: 250px; -webkit-transform: translate3d(0px, 0px, 0px);"><img src="js/saved_resource" tppabs="js/saved_resource" style="position: absolute; border: none; width: 512px; height: 512px; left: -168px; top: 77px; max-width: none; opacity: 1; display: block;"><img src="js/saved_resource(1)" tppabs="js/saved_resource(1)" style="position: absolute; border: none; width: 512px; height: 512px; left: -680px; top: 77px; max-width: none; opacity: 1; display: block;"><img src="js/saved_resource(2)" tppabs="js/saved_resource(2)" style="position: absolute; border: none; width: 512px; height: 512px; left: 344px; top: 77px; max-width: none; opacity: 1; display: block;"><img src="js/saved_resource(3)" tppabs="js/saved_resource(3)" style="position: absolute; border: none; width: 512px; height: 512px; left: -168px; top: -435px; max-width: none; opacity: 1; display: block;"><img src="js/saved_resource(4)" tppabs="js/saved_resource(4)" style="position: absolute; border: none; width: 512px; height: 512px; left: -168px; top: 589px; max-width: none; opacity: 1; display: block;"><img src="js/saved_resource(5)" tppabs="js/saved_resource(5)" style="position: absolute; border: none; width: 512px; height: 512px; left: -1192px; top: 77px; max-width: none; opacity: 1; display: block;"><img src="js/saved_resource(6)" tppabs="js/saved_resource(6)" style="position: absolute; border: none; width: 512px; height: 512px; left: 856px; top: 77px; max-width: none; opacity: 1; display: block;"><img src="js/saved_resource(7)" tppabs="js/saved_resource(7)" style="position: absolute; border: none; width: 512px; height: 512px; left: 344px; top: 589px; max-width: none; opacity: 1; display: block;"><img src="js/saved_resource(8)" tppabs="js/saved_resource(8)" style="position: absolute; border: none; width: 512px; height: 512px; left: -680px; top: -435px; max-width: none; opacity: 1; display: block;"><img src="js/saved_resource(9)" tppabs="js/saved_resource(9)" style="position: absolute; border: none; width: 512px; height: 512px; left: 344px; top: -435px; max-width: none; opacity: 1; display: block;"><img src="js/saved_resource(10)" tppabs="js/saved_resource(10)" style="position: absolute; border: none; width: 512px; height: 512px; left: -680px; top: 589px; max-width: none; opacity: 1; display: block;"><img src="js/saved_resource(11)" tppabs="js/saved_resource(11)" style="position: absolute; border: none; width: 512px; height: 512px; left: 1368px; top: 77px; max-width: none; opacity: 1; display: block;"><img src="js/saved_resource(12)" tppabs="js/saved_resource(12)" style="position: absolute; border: none; width: 512px; height: 512px; left: 856px; top: 589px; max-width: none; opacity: 1; display: block;"><img src="js/saved_resource(13)" tppabs="js/saved_resource(13)" style="position: absolute; border: none; width: 512px; height: 512px; left: -1192px; top: -435px; max-width: none; opacity: 1; display: block;"><img src="js/saved_resource(14)" tppabs="js/saved_resource(14)" style="position: absolute; border: none; width: 512px; height: 512px; left: 856px; top: -435px; max-width: none; opacity: 1; display: block;"><img src="js/saved_resource(15)" tppabs="js/saved_resource(15)" style="position: absolute; border: none; width: 512px; height: 512px; left: -1192px; top: 589px; max-width: none; opacity: 1; display: block;"><img src="js/saved_resource(16)" tppabs="js/saved_resource(16)" style="position: absolute; border: none; width: 512px; height: 512px; left: 1368px; top: -435px; max-width: none; opacity: 1; display: block;"><img src="js/saved_resource(17)" tppabs="js/saved_resource(17)" style="position: absolute; border: none; width: 512px; height: 512px; left: 1368px; top: 589px; max-width: none; opacity: 0.51; display: block;"></div><div class="BMap_mask" style="position: absolute; left: -265px; top: 318px; z-index: 9; overflow: hidden; -webkit-user-select: none; width: 1290px; height: 500px;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;"><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 800;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 700;"><span class="BMap_Marker BMap_noprint" unselectable="on" "="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 19px; height: 25px; left: 589px; top: 155px; z-index: -7983428; background: url(http://api0.map.bdimg.com/images/blank.gif);" title=""></span><span class="BMap_Marker BMap_noprint" unselectable="on" "="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; width: 18px; height: 18px; left: 416px; top: 101px; z-index: 19000000; -webkit-user-select: none; display: none; background: url(http://api0.map.bdimg.com/images/blank.gif);" title=""></span></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 600;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 500;"><label class="BMapLabel" unselectable="on" style="position: absolute; display: none; cursor: inherit; border: 1px solid rgb(190, 190, 190); padding: 1px; white-space: nowrap; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-family: arial, sans-serif; z-index: -20000; color: rgb(190, 190, 190); background-color: rgb(190, 190, 190);">shadow</label><label class="BMapLabel" unselectable="on" style="position: absolute; display: none; cursor: inherit; border: 1px solid rgb(140, 140, 140); padding: 1px; white-space: nowrap; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-family: arial, sans-serif; z-index: 80; -webkit-user-select: none; color: rgb(77, 77, 77); background-color: rgb(255, 255, 225);">点击可查看详情</label></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 400;"><span class="BMap_Marker" unselectable="on" style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 589px; top: 155px; z-index: -7983428;"><div style="position: absolute; margin: 0px; padding: 0px; width: 19px; height: 25px; overflow: hidden;"><img src="js/marker_red_sprite.png" tppabs="js/marker_red_sprite.png" style="display: block; border:none;margin-left:0px; margin-top:0px; "></div></span><span class="BMap_Marker" unselectable="on" style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 416px; top: 101px; z-index: 19000000; display: none;"><div style="position: absolute; margin: 0px; padding: 0px; width: 18px; height: 18px; overflow: hidden;"><img src="js/spotmkrs.png" tppabs="js/spotmkrs.png" style="display: block; border:none;margin-left:-214px; margin-top:-226px; "></div></span></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 300;"><span unselectable="on" style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 593px; top: 169px;"><div style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;"><img src="js/marker_red_sprite.png" tppabs="js/marker_red_sprite.png" style="display: block; border:none;margin-left:-19px; margin-top:-13px; "></div></span></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 201;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;"><svg version="1.1" type="system" x="2290px" y="1500px" viewBox="-765 -182 2290 1500" style="position: absolute; top: -182px; left: -765px; width: 2290px; height: 1500px;"><path stroke-linejoin="round" stroke-linecap="round" fill-rule="evenodd" fill="none" stroke="blue" stroke-width="5" stroke-dasharray="none" stroke-opacity="1" d="M -9999,-9999" style="cursor: pointer; -webkit-user-select: none;"></path></svg></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 1;"><div style="position: absolute; overflow: visible; z-index: -100; left: 380px; top: 568px; display: block; -webkit-transform: translate3d(0px, 0px, 0px);"><img src="js/saved_resource(18)" tppabs="js/saved_resource(18)" style="position: absolute; border: none; width: 256px; height: 256px; left: -160px; top: -498px; max-width: none; opacity: 1;"><img src="js/saved_resource(19)" tppabs="js/saved_resource(19)" style="position: absolute; border: none; width: 256px; height: 256px; left: 352px; top: -498px; max-width: none; opacity: 1;"><img src="js/saved_resource(20)" tppabs="js/saved_resource(20)" style="position: absolute; border: none; width: 256px; height: 256px; left: -416px; top: -498px; max-width: none; opacity: 1;"><img src="js/saved_resource(21)" tppabs="js/saved_resource(21)" style="position: absolute; border: none; width: 256px; height: 256px; left: 96px; top: -498px; max-width: none; opacity: 1;"><img src="js/saved_resource(22)" tppabs="js/saved_resource(22)" style="position: absolute; border: none; width: 256px; height: 256px; left: -672px; top: -498px; max-width: none; opacity: 1;"><img src="js/saved_resource(23)" tppabs="js/saved_resource(23)" style="position: absolute; border: none; width: 256px; height: 256px; left: -160px; top: -242px; max-width: none; opacity: 1;"><img src="js/saved_resource(24)" tppabs="js/saved_resource(24)" style="position: absolute; border: none; width: 256px; height: 256px; left: 96px; top: -242px; max-width: none; opacity: 1;"><img src="js/saved_resource(25)" tppabs="js/saved_resource(25)" style="position: absolute; border: none; width: 256px; height: 256px; left: -416px; top: -242px; max-width: none; opacity: 1;"><img src="js/saved_resource(26)" tppabs="js/saved_resource(26)" style="position: absolute; border: none; width: 256px; height: 256px; left: -672px; top: -242px; max-width: none; opacity: 1;"><img src="js/saved_resource(27)" tppabs="js/saved_resource(27)" style="position: absolute; border: none; width: 256px; height: 256px; left: -160px; top: 14px; max-width: none; opacity: 1;"><img src="js/saved_resource(28)" tppabs="js/saved_resource(28)" style="position: absolute; border: none; width: 256px; height: 256px; left: 96px; top: 14px; max-width: none; opacity: 1;"><img src="js/saved_resource(29)" tppabs="js/saved_resource(29)" style="position: absolute; border: none; width: 256px; height: 256px; left: -416px; top: 14px; max-width: none; opacity: 1;"><img src="js/saved_resource(30)" tppabs="js/saved_resource(30)" style="position: absolute; border: none; width: 256px; height: 256px; left: 608px; top: -242px; max-width: none; opacity: 1;"><img src="js/saved_resource(31)" tppabs="js/saved_resource(31)" style="position: absolute; border: none; width: 256px; height: 256px; left: 352px; top: 14px; max-width: none; opacity: 1;"><img src="js/saved_resource(32)" tppabs="js/saved_resource(32)" style="position: absolute; border: none; width: 256px; height: 256px; left: 608px; top: 14px; max-width: none; opacity: 1;"><img src="js/saved_resource(33)" tppabs="js/saved_resource(33)" style="position: absolute; border: none; width: 256px; height: 256px; left: 608px; top: -498px; max-width: none; opacity: 1;"><img src="js/saved_resource(34)" tppabs="js/saved_resource(34)" style="position: absolute; border: none; width: 256px; height: 256px; left: 352px; top: -242px; max-width: none; opacity: 1;"><img src="js/saved_resource(35)" tppabs="js/saved_resource(35)" style="position: absolute; border: none; width: 256px; height: 256px; left: -672px; top: 14px; max-width: none; opacity: 1;"></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 2; display: none; visibility: hidden;"><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 0; display: none;"></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 3;"></div></div><div style="overflow: hidden; position: absolute; left: 0px; bottom: 0px; z-index: 2100; width: 100%; height: 30px; -webkit-user-select: none; visibility: hidden; font-size: 12px; color: rgb(54, 54, 54); line-height: 20px;"><div style="width: 1000px; overflow:hidden;"><a target="_blank" title="到百度地图查看此区域" href="javascript:if(confirm('http://map.baidu.com/  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ������·������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://map.baidu.com/'" tppabs="http://map.baidu.com/" style="outline:none;float: left;"><img style="border:none;width:77px;height:32px;vertical-align:bottom;" src="js/copyright_logo.png" tppabs="js/copyright_logo.png"></a><div style="float: left; margin-top: 10px; font-size: 12px;"><span style="margin-left: 10px;"></span><span style="margin-left: 10px;">拍摄日期:</span></div></div></div><div title="退出全景" style="position: absolute; z-index: 1201; top: 10px; right: 10px; width: 17px; height: 16px; cursor: pointer; display: none; background: url(http://api0.map.bdimg.com/images/st-close.png) no-repeat;"></div><div class=" anchorBL" style="height: 32px; position: absolute; z-index: 30; bottom: 0px; right: auto; top: auto; left: 1px;"><a title="到百度地图查看此区域" target="_blank" href="javascript:if(confirm('http://map.baidu.com/?sr=1  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ������·������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://map.baidu.com/?sr=1'" tppabs="http://map.baidu.com/?sr=1" style="outline: none;"><img style="border:none;width:77px;height:32px" src="js/copyright_logo.png" tppabs="js/copyright_logo.png"></a></div><div id="zoomer" style="position: absolute; z-index: 0; top: 87.5px; left: 469px; overflow: hidden; visibility: hidden; cursor: url(http://api0.map.bdimg.com/images/openhand.cur) 8 8, default; width: 120px; height: 91px;"><div class="BMap_zoomer" style="top: 0px; left: 0px; background-position: 0px 0px;"></div><div class="BMap_zoomer" style="top: 0px; right: 0px; background-position: -7px 0px;"></div><div class="BMap_zoomer" style="bottom: 0px; left: 0px; background-position: 0px -7px;"></div><div class="BMap_zoomer" style="bottom: 0px; right: 0px; background-position: -7px -7px;"></div></div><div unselectable="on" class=" BMap_cpyCtrl BMap_noprint anchorBL" style="cursor: default; white-space: nowrap; color: black; font-style: normal; font-variant: normal; font-weight: normal; font-size: 11px; line-height: 15px; font-family: arial, sans-serif; bottom: 2px; right: auto; top: auto; left: 81px; position: absolute; z-index: 10; background: none;"><span _cid="1" style="display: inline;"><span style="font-size:11px">© 2015 Baidu&nbsp;- Data © <a target="_blank" href="javascript:if(confirm('http://www.navinfo.com/  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ������·������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://www.navinfo.com/'" tppabs="http://www.navinfo.com/" style="display:inline;">NavInfo</a> &amp; <a target="_blank" href="javascript:if(confirm('http://www.cennavi.com.cn/  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ������·������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://www.cennavi.com.cn/'" tppabs="http://www.cennavi.com.cn/" style="display:inline;">CenNavi</a> &amp; <a target="_blank" href="javascript:if(confirm('http://www.365ditu.com/  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ������·������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://www.365ditu.com/'" tppabs="http://www.365ditu.com/" style="display:inline;">道道通</a></span></span></div></div>
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
<script type="text/javascript" src="../../api.map.baidu.com/getscript-v=2.0&ak=AuNk3YS21DSmHEEvIFDf9dbD&services=&t=20150106162002" tppabs="http://api.map.baidu.com/getscript?v=2.0&ak=AuNk3YS21DSmHEEvIFDf9dbD&services=&t=20150106162002"></script>
<script type="text/javascript" src="js/test_trace.js" tppabs="js/test_trace.js"></script>
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
//car.setPosition(point);
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
//car.setPosition(points[0]);
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