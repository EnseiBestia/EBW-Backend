<%@ page pageEncoding="UTF-8" %>
<html>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.css" tppabs="css/bootstrap.css">
    <link rel="stylesheet" href="css/scojs.css" tppabs="css/scojs.css">
    <link rel="stylesheet" href="css/sco.message.css" tppabs="css/sco.message.css">
    <!--[if lt IE 9]>
        <script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.min.js"></script>
        <script src="http://cdn.bootcss.com/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  	<link rel="stylesheet" href="css/gird.css" tppabs="css/gird.css">
	<link rel="stylesheet" href="css/form.css" tppabs="css/form.css">
	<link rel="stylesheet" href="css/datetimepicker.css" tppabs="css/datetimepicker.css">
	<style>
		/* autocomplete */
		div.ac {border: 1px solid #ccc;position: absolute;display: none;overflow: auto;background-color: #ffffff;z-index:998;}
		div.ac > ul {margin-top:10px;padding:0;}
		div.ac > ul > li {height:33px;line-height:33px;cursor:pointer;}
		div.ac > ul > li:hover{background:#eee;}
		div.ac > ul > li > div span {padding-left:15px;}
		div.ac > ul > li > div span em {color:red;font-style: normal;}
	</style>
  <style type="text/css">.BMap_mask{background:transparent url("../../api0.map.bdimg.com/images/blank.gif");}.BMap_noscreen{display:none;}.BMap_button{cursor:pointer;}.BMap_zoomer{background-image:url(http://api0.map.bdimg.com/images/mapctrls1d3.gif);background-repeat:no-repeat;overflow:hidden;font-size:1px;position:absolute;width:7px;height:7px;}.BMap_stdMpCtrl div{position:absolute;}.BMap_stdMpPan{width:44px;height:44px;overflow:hidden;background:url("../../api0.map.bdimg.com/images/mapctrls2d0.png") no-repeat;}.BMap_ie6 .BMap_stdMpPan{background:none;}.BMap_ie6 .BMap_smcbg{left:0;width:44px;height:464px;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src="http://api0.map.bdimg.com/images/mapctrls2d0.png");}.BMap_ie6 .BMap_stdMpPanBg{z-index:-1;}.BMap_stdMpPan .BMap_button{height:15px;width:15px;}.BMap_panN,.BMap_panW,.BMap_panE,.BMap_panS{overflow:hidden;}.BMap_panN{left:14px;top:0;}.BMap_panW{left:1px;top:12px;}.BMap_panE{left:27px;top:12px;}.BMap_panS{left:14px;top:25px;}.BMap_stdMpZoom{top:45px;overflow:hidden;}.BMap_stdMpZoom .BMap_button{width:22px;height:21px;left:12px;overflow:hidden;background-image:url(http://api0.map.bdimg.com/images/mapctrls2d0.png);background-repeat:no-repeat;z-index:10;}.BMap_ie6 .BMap_stdMpZoom .BMap_button{background:none;}.BMap_stdMpZoomIn{background-position:0 -221px;}.BMap_stdMpZoomOut{background-position:0 -265px;}.BMap_ie6 .BMap_stdMpZoomIn div{left:0;top:-221px;}.BMap_ie6 .BMap_stdMpZoomOut div{left:0;top:-265px;}.BMap_stdMpType4 .BMap_stdMpZoom .BMap_button{left:0;overflow:hidden;background:-webkit-gradient(linear,50% 0,50% 100%,from(rgba(255,255,255,0.85)),to(rgba(217,217,217,0.85)));z-index:10;-webkit-border-radius:22px;width:34px;height:34px;border:1px solid rgba(255,255,255,0.5);-webkit-box-shadow:0 2px 3.6px #CCC;display:-webkit-box;-webkit-box-align:center;-webkit-box-pack:center;-webkit-box-sizing:border-box;}.BMap_stdMpType4 .BMap_smcbg{position:static;background:url("../../api0.map.bdimg.com/images/mapctrls2d0_mb.png") 0 0 no-repeat;-webkit-background-size:24px 32px;}.BMap_stdMpType4 .BMap_stdMpZoomIn{background-position:0 0;}.BMap_stdMpType4 .BMap_stdMpZoomIn .BMap_smcbg{width:24px;height:24px;background-position:0 0;}.BMap_stdMpType4 .BMap_stdMpZoomOut{background-position:0 0;}.BMap_stdMpType4 .BMap_stdMpZoomOut .BMap_smcbg{width:24px;height:6px;background-position:0 -25px;}.BMap_stdMpSlider{width:37px;top:18px;}.BMap_stdMpSliderBgTop{left:18px;width:10px;overflow:hidden;background:url(http://api0.map.bdimg.com/images/mapctrls2d0.png) no-repeat -23px -226px;}.BMap_stdMpSliderBgBot{left:19px;height:8px;width:10px;top:124px;overflow:hidden;background:url("../../api0.map.bdimg.com/images/mapctrls2d0.png") no-repeat -33px bottom;}.BMap_ie6 .BMap_stdMpSliderBgTop,.BMap_ie6 .BMap_stdMpSliderBgBot{background:none;}.BMap_ie6 .BMap_stdMpSliderBgTop div{left:-23px;top:-226px;}.BMap_ie6 .BMap_stdMpSliderBgBot div{left:-33px;bottom:0;}.BMap_stdMpSliderMask{height:100%;width:24px;left:10px;cursor:pointer;}.BMap_stdMpSliderBar{height:11px;width:19px;left:13px;top:80px;overflow:hidden;background:url(http://api0.map.bdimg.com/images/mapctrls2d0.png) no-repeat 0 -309px;}.BMap_stdMpSliderBar.h{background:url("../../api0.map.bdimg.com/images/mapctrls2d0.png") no-repeat 0 -320px;}.BMap_ie6 .BMap_stdMpSliderBar,.BMap_ie6 .BMap_stdMpSliderBar.h{background:none;}.BMap_ie6 .BMap_stdMpSliderBar div{top:-309px;}.BMap_ie6 .BMap_stdMpSliderBar.h div{top:-320px;}.BMap_zlSt,.BMap_zlCity,.BMap_zlProv,.BMap_zlCountry{position:absolute;left:34px;height:21px;width:28px;background-image:url(http://api0.map.bdimg.com/images/mapctrls2d0.png);background-repeat:no-repeat;font-size:0;cursor:pointer;}.BMap_ie6 .BMap_zlSt,.BMap_ie6 .BMap_zlCity,.BMap_ie6 .BMap_zlProv,.BMap_ie6 .BMap_zlCountry{background:none;overflow:hidden;}.BMap_zlHolder{display:none;position:absolute;top:0;}.BMap_zlHolder.hvr{display:block;}.BMap_zlSt{background-position:0 -380px;top:21px;}.BMap_zlCity{background-position:0 -401px;top:52px;}.BMap_zlProv{background-position:0 -422px;top:76px;}.BMap_zlCountry{background-position:0 -443px;top:100px;}.BMap_ie6 .BMap_zlSt div{top:-380px;}.BMap_ie6 .BMap_zlCity div{top:-401px;}.BMap_ie6 .BMap_zlProv div{top:-422px;}.BMap_ie6 .BMap_zlCountry div{top:-443px;}.BMap_stdMpType1 .BMap_stdMpSlider,.BMap_stdMpType2 .BMap_stdMpSlider,.BMap_stdMpType3 .BMap_stdMpSlider,.BMap_stdMpType4 .BMap_stdMpSlider,.BMap_stdMpType2 .BMap_stdMpZoom,.BMap_stdMpType3 .BMap_stdMpPan,.BMap_stdMpType4 .BMap_stdMpPan{display:none;}.BMap_stdMpType3 .BMap_stdMpZoom{top:0;}.BMap_stdMpType4 .BMap_stdMpZoom{top:0;}.BMap_cpyCtrl a{font-size:11px;color:#7979CC;}.BMap_scaleCtrl{height:23px;overflow:hidden;}.BMap_scaleCtrl div.BMap_scaleTxt{font-size:11px;font-family:Arial,sans-serif;}.BMap_scaleCtrl div{position:absolute;overflow:hidden;}.BMap_scaleHBar img,.BMap_scaleLBar img,.BMap_scaleRBar img{position:absolute;width:37px;height:442px;left:0;}.BMap_scaleHBar{width:100%;height:5px;font-size:0;bottom:0;}.BMap_scaleHBar img{top:-437px;width:100%;}.BMap_scaleLBar,.BMap_scaleRBar{width:3px;height:9px;bottom:0;font-size:0;z-index:1;}.BMap_scaleLBar img{top:-427px;left:0;}.BMap_scaleRBar img{top:-427px;left:-5px;}.BMap_scaleLBar{left:0;}.BMap_scaleRBar{right:0;}.BMap_scaleTxt{text-align:center;width:100%;cursor:default;line-height:18px;}.BMap_omCtrl{background-color:#fff;overflow:hidden;}.BMap_omOutFrame{position:absolute;width:100%;height:100%;left:0;top:0;}.BMap_omInnFrame{position:absolute;border:1px solid #999;background-color:#ccc;overflow:hidden;}.BMap_omMapContainer{position:absolute;overflow:hidden;width:100%;height:100%;left:0;top:0;}.BMap_omViewMv{border-width:1px;border-style:solid;border-left-color:#84b0df;border-top-color:#adcff4;border-right-color:#274b8b;border-bottom-color:#274b8b;position:absolute;z-index:600;}.BMap_omViewInnFrame{border:1px solid #3e6bb8;}.BMap_omViewMask{width:1000px;height:1000px;position:absolute;left:0;top:0;background-color:#68c;opacity:.2;filter:progid:DXImageTransform.Microsoft.Alpha(opacity=20);}.BMap_omBtn{height:13px;width:13px;position:absolute;cursor:pointer;overflow:hidden;background:url("../../api0.map.bdimg.com/images/mapctrls1d3.gif") no-repeat;z-index:1210;}.anchorBR .BMap_omOutFrame{border-top:1px solid #999;border-left:1px solid #999;}.quad4 .BMap_omBtn{background-position:-26px -27px;}.quad4 .BMap_omBtn.hover{background-position:0 -27px;}.quad4 .BMap_omBtn.BMap_omBtnClosed{background-position:-39px -27px;}.quad4 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:-13px -27px;}.anchorTR .BMap_omOutFrame{border-bottom:1px solid #999;border-left:1px solid #999;}.quad1 .BMap_omBtn{background-position:-39px -41px;}.quad1 .BMap_omBtn.hover{background-position:-13px -41px;}.quad1 .BMap_omBtn.BMap_omBtnClosed{background-position:-26px -41px;}.quad1 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:0 -41px;}.anchorBL .BMap_omOutFrame{border-top:1px solid #999;border-right:1px solid #999;}.quad3 .BMap_omBtn{background-position:-27px -40px;}.quad3 .BMap_omBtn.hover{background-position:-1px -40px;}.quad3 .BMap_omBtn.BMap_omBtnClosed{background-position:-40px -40px;}.quad3 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:-14px -40px;}.anchorTL .BMap_omOutFrame{border-bottom:1px solid #999;border-right:1px solid #999;}.quad2 .BMap_omBtn{background-position:-40px -28px;}.quad2 .BMap_omBtn.hover{background-position:-14px -28px;}.quad2 .BMap_omBtn.BMap_omBtnClosed{background-position:-27px -28px;}.quad2 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:-1px -28px;}.anchorR .BMap_omOutFrame{border-bottom:1px solid #999;border-left:1px solid #999;border-top:1px solid #999;}.anchorL .BMap_omOutFrame{border-bottom:1px solid #999;border-right:1px solid #999;border-top:1px solid #999;}.anchorB .BMap_omOutFrame{border-top:1px solid #999;border-left:1px solid #999;border-right:1px solid #999;}.anchorT .BMap_omOutFrame{border-bottom:1px solid #999;border-right:1px solid #999;border-left:1px solid #999;}.anchorNon .BMap_omOutFrame,.withOffset .BMap_omOutFrame{border:1px solid #999;}.BMap_zoomMask0,.BMap_zoomMask1{position:absolute;left:0;top:0;width:100%;height:100%;background:transparent url(http://api0.map.bdimg.com/images/blank.gif);z-index:1000;}.BMap_contextMenu{position:absolute;border-top:1px solid #adbfe4;border-left:1px solid #adbfe4;border-right:1px solid #8ba4d8;border-bottom:1px solid #8ba4d8;padding:0;margin:0;width:auto;visibility:hidden;background:#fff;z-index:10000000;}.BMap_cmShadow{position:absolute;background:#000;opacity:.3;filter:alpha(opacity=30);visibility:hidden;z-index:9000000;}div.BMap_cmDivider{border-bottom:1px solid #adbfe4;font-size:0;padding:1px;margin:0 6px;}div.BMap_cmFstItem{margin-top:2px;}div.BMap_cmLstItem{margin-bottom:2px;}.BMap_shadow img{border:0 none;margin:0;padding:0;height:370px;width:1144px;}.BMap_pop .BMap_top{border-top:1px solid #ababab;background-color:#fff;}.BMap_pop .BMap_center{border-left:1px solid #ababab;border-right:1px solid #ababab;background-color:#fff;}.BMap_pop .BMap_bottom{border-bottom:1px solid #ababab;background-color:#fff;}.BMap_shadow,.BMap_shadow img,.BMap_shadow div{-moz-user-select:none;-webkit-user-select:none;}.BMap_checkbox{background:url("../../api0.map.bdimg.com/images/mapctrls1d3.gif");vertical-align:middle;display:inline-block;width:11px;height:11px;margin-right:4px;background-position:-14px 90px;}.BMap_checkbox.checked{background-position:-2px 90px;}.BMap_pop .BMap_top img,.BMap_pop .BMap_center img,.BMap_pop .BMap_bottom img{display:none;}@media print{.BMap_noprint{display:none;}.BMap_noscreen{display:block;}.BMap_mask{background:none;}.BMap_pop .BMap_top img,.BMap_pop .BMap_center img,.BMap_pop .BMap_bottom img{display:block;}}.BMap_vectex{cursor:pointer;width:11px;height:11px;position:absolute;background-repeat:no-repeat;background-position:0 0;}.BMap_vectex_nodeT{background-image:url(http://api0.map.bdimg.com/images/nodeT.gif);}.BMap_vectex_node{background-image:url("../../api0.map.bdimg.com/images/node.gif");}.iw{width:100%;-webkit-box-sizing:border-box;border:.3em solid transparent;-webkit-background-clip:padding;}.iw_rt{position:relative;height:46px;width:195px;-webkit-box-sizing:border-box;display:-webkit-box;-webkit-box-align:center;margin:2px 5px 0 2px;background-color:rgba(0,0,0,0.8);-webkit-box-shadow:2px 2px 7px rgba(0,0,0,0.3);-webkit-border-radius:2px;color:#fff;}.iw_rt:after{content:"";position:absolute;left:50%;bottom:-8px;width:0;height:0;border-left:5px solid transparent;border-top:8px solid rgba(0,0,0,0.8);border-right:5px solid transparent;margin:0 0 0 -6px;}.iw_s{text-align:center;vertical-align:middle;height:100%;-webkit-box-sizing:border-box;}.iw_rt .iw_s1{color:#cbcbcb;}.iw_rt b{color:#fff;font-weight:bold;}.iw_rt_gr{margin-left:-4px;}.iw_busline{margin:32px 0 0 -3px;}.iw_busline .iw_cc{text-align:center;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;padding:0 6px;}.iw_r{-webkit-box-ordinal-group:3;}.iw_r,.iw_l{height:100%;font-size:4.5em;text-align:center;color:#747474;border:none;-webkit-box-sizing:border-box;-webkit-border-radius:0;line-height:.7em;border:1px solid rgba(255,255,255,0.2);width:41px;}.iw_r{border-style:none none none solid;}.iw_l{border-style:none solid none none;}.iw_search,.iw_l{background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAAlCAYAAAAuqZsAAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ bWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6 eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNl SUQ9InhtcC5paWQ6QjA3NjMyREJDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiIHhtcE1NOkRvY3Vt ZW50SUQ9InhtcC5kaWQ6QjA3NjMyRENDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiPiA8eG1wTU06 RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCMDc2MzJEOUM3NDYxMUUxOUFB QzlDOUJENkY4NkJCRiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCMDc2MzJEQUM3NDYxMUUx OUFBQzlDOUJENkY4NkJCRiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1w bWV0YT4gPD94cGFja2V0IGVuZD0iciI/PllB9T8AAAKuSURBVHjaxFjRcdpAEAX+mVEqiFxB5AoQ HZAKElcArsBWBSgVQCoAVwCuwEoFlivwGQpI7jKrzGXn7ep0EsPO7BjLp/O73bdv9xifTqdRpCXW c+sz65n1lNy3mvzZemX9aN34C6bTKdx8HAHMgVlaX0QeaGv9J4EcBJgD9EA/hzAH7N4Cq/oAW1tf KX+vKEXP7PlMSLFvhQX32BWY49GBOIRO7FKy57wBlnoUQHu5yJX+g4mymdvgFWzkAM3JtwGgmiJw a2/pvQoEYBQCLKNI8RfuaeNjT245gAUdqgHdmkqUPiOctLdJVYkithkAVO/K5cC+M30KAZVSxboo /ybnn1eIR5r5qUyI7P4GX6nqJHskbQsxQ7wqu6aSn2qrgHLrXjqAat5ZC0WlRuzVE0J3uhtBCjRt a3qjX92JIMiOIqYtYgumzpo+7RRtu/E0zvknokMF5GgdQv4Ze/5DWL8CFVe2aNuedGsLCi1vS+WL F4WKNkL2Dnh414FnO1b1R5vKuRaxjKUF2YKBqjuCGtF6nyL5+XxOJWCcL2/CpjzdRYRuGpDShQQs ARUj9U/OnRh7Yr9/CW1JXU4fYxXoHIMCu+iB+gBLIt/LgShDYCYktGCDfCBgvyRgVQgZwTy/jIzy EnQNMZV1QCT4bJ+3XFCkS81/WijdkiYAdSak04BWtabWEmIbsNZYgU00YE+gjyErQeo31GpShVMH Yc+/dwsEzh97/D6ojT2ZMlM1XwN8WP9Ma7NAbZvbtBoEjE+jBT2TusCu5SIbI7z/wLWN1rdKi0o6 cqwTuAmYyTm5NQW/82atWvlnBbo7apxD98qDJxl7mkC76JQ2Qm0CI1xKF95Gb4oLXHJDwJlxjy/u LgruGtNFM8lqnNtfK2JqN3CVeW1gzWj9jThd0xd59R8BBgAAiefGO1Bt1gAAAABJRU5ErkJggg==") no-repeat 50% 50%;-webkit-background-size:19px 19px;}.iw_line_s,.iw_r{background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACUAAAAmCAYAAABDClKtAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ bWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6 eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNl SUQ9InhtcC5paWQ6QjA3NjMyREZDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiIHhtcE1NOkRvY3Vt ZW50SUQ9InhtcC5kaWQ6QjA3NjMyRTBDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiPiA8eG1wTU06 RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCMDc2MzJEREM3NDYxMUUxOUFB QzlDOUJENkY4NkJCRiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCMDc2MzJERUM3NDYxMUUx OUFBQzlDOUJENkY4NkJCRiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1w bWV0YT4gPD94cGFja2V0IGVuZD0iciI/PqheQ+MAAAEtSURBVHja7JftDYIwEIbB8JeEUXACZQPd oGygE+gGxAnQEZzAOgEdwREIDKBXUgjBIqW5Npj0kvcHpG0erveFX1WVZ8l2oBhEhRoLw/BroW8J KgeR3vMVlI5BrSwAHQZAnngmYxtMe4oIL41ZAp6iNqF4/BQTa0oBxmxAcaAHKFJY+wKtAaw0CRUJ oHjGHiY8VpqCKmYCdRkJUKmJ7Ms1gZqkqOs6w/bUGXRCOGePCcXjaItwDsW8PoZ0zhM70IeeyiZi jH/Isf+CF9MAOdCppDj+LJ6yim6j9802B6VqQa818BFjY6AHakHp9Crj15ctCaiFIi7Q/wCKLRHq vjSoVNKWunH4rTBDv5Cv7NKeKfvvU2nINzHAuexzUA7KQTkoB6UxDicKvc+qfQQYABaiUBxugCsr AAAAAElFTkSuQmCC") no-repeat 50% 50%;-webkit-background-size:19px 19px;}.iw_line{height:64px;width:228px;padding:0 11px;line-height:20px;}.iw_bustrans .iw_cc{text-align:center;}.iw_c{color:#FFFFFF;text-decoration:none;overflow:hidden;display:-webkit-box;-webkit-box-align:center;-webkit-box-flex:1;}.iw_cc{-webkit-box-sizing:border-box;width:100%;border:none;}.gray_background{filter:alpha(opacity=50);-moz-opacity:0.5;-khtml-opacity:0.5;opacity: 0.5} .light_gray_background {filter:alpha(opacity=70);-moz-opacity:0.7;-khtml-opacity:0.7;opacity: 0.7} .panoInfoBox {cursor: pointer; } .panoInfoBox {position: relative; width: 323px; height: 101px; margin-bottom: 4px; cursor: pointer; } .panoInfoBox .panoInfoBoxTitleBg {width: 323px; height: 19px; position: absolute; left: 0; bottom: 0; z-index: 2; background-color: #000; opacity: .7; } .panoInfoBox .panoInfoBoxTitleContent {font-size: 12px; color: #fff; position: absolute; bottom: 2px; left: 5px; z-index: 3; text-decoration: none; } .RouteAddressOuterBkg{position:relative; padding: 32px 4px 4px 3px; background-color:#ffdd99; } .RouteAddressInnerBkg{padding: 3px 5px 8px 8px; background-color:#ffffff; } #RouteAddress_DIV1{margin-top: 5px; } .RouteAddressTip{position:absolute; width:100%; top:0px; text-align:center; height:30px; line-height:30px; color:#994c00; } .route_tip_con {position:absolute;top:145px;} .route_tip_con .route_tip{position:absolute;width:233px;height:29px;color:#803300;text-align:center;line-height:29px;border:#cc967a solid 1px;background:#fff2b2;z-index:100000;} .route_tip_con .route_tip span{position:absolute;top:0;right:0;_right:-1px;width:14px;height:13px;background:url("../../api0.map.bdimg.com/images/addrPage.png-v=20121107") no-repeat 0 -121px;cursor:pointer;} .route_tip_con .route_tip_shadow{width:233px;height:29px;  position:absolute;left:1px;top:1px;background:#505050;border:1px solid #505050;opacity:0.2;filter:alpha(opacity=20)} .sel_body_body_page{margin:5px 0} .sel_n{margin-top:5px;overflow:hidden;} .sel_n .sel_top{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -418px;height:4px;font-size:0px;} .sel_n .sel_body_top{height:32px;width:100%;background:url("../../api0.map.bdimg.com/images/addrPage.png-v=20121107") no-repeat 0 -41px;} .sel_n .sel_body_title{float:left;width:100%;height:31px;} .sel_n .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -79px -387px;} .sel_n .sel_body_name{height: 10px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_n .sel_body_button{float:left;width:55px;margin-left:-55px;padding-top:8px;} .sel_n .sel_body_button a{} .sel_n .sel_bottom{background:url("../../api0.map.bdimg.com/images/bgs.gif") no-repeat 0 -415px;height:4px;font-size:0px;} .sel_n .sel_body_body{padding:3px 0 0 0} .sel_n1{margin-top:5px;width:329px;overflow:hidden;} .sel_n1 .sel_top{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -418px;height:4px;font-size:0px;} .sel_n1 .sel_body_top{height:31px;width:100%;background:url("../../api0.map.bdimg.com/images/sel_body_n_top.gif") repeat-x;} .sel_n1 .sel_body_top{height:32px;width:100%;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 -41px} .sel_n1 .sel_body_title{float:left;width:100%;height:31px;cursor:pointer;} .sel_n1 .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url("../../api0.map.bdimg.com/images/bgs.gif") no-repeat -79px -387px;} .sel_n1 .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_n1 .sel_body_button{float:left;width:20px;height:31px;margin-left:-23px;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -253px -382px;overflow:hidden;zoom:1;cursor:pointer;} .sel_n1 .sel_body_button a{display:none;} .sel_n1 .sel_body_body{display:none} .sel_n1 .sel_bottom{background:url("../../api0.map.bdimg.com/images/bgs.gif") no-repeat 0 -415px;height:4px;font-size:0px;} .sel_y{margin-top:5px;overflow:hidden;} .sel_y .sel_top{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -439px;height:4px;zoom:1;font-size:0px;} .sel_y .sel_body_top{height:32px;width:100%;background:url("../../api0.map.bdimg.com/images/addrPage.png-v=20121107") no-repeat 0 0} .sel_y .sel_body_title{float:left;width:100%;height:31px;cursor:pointer;} .sel_y .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -167px -384px;} .sel_y .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#5B7BCB;} .sel_y .sel_body_button{float:left;width:20px;height:31px;margin-left:-20px;background:url("../../api0.map.bdimg.com/images/bgs.gif") no-repeat -269px -297px;cursor:pointer;} .sel_y .sel_body_button a{display:none;} .sel_y .sel_body_body{display:none;height:0px} .sel_y .sel_body_body_div{} .sel_y .sel_bottom{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -436px;height:4px;font-size:0px;} .sel_y .sel_body_body_page{display:none;height:0px;} .sel_x{margin-top:5px;width:329px;overflow:hidden;} .sel_x .sel_top{background:url("../../api0.map.bdimg.com/images/bgs.gif") no-repeat 0 -418px;height:4px;font-size:0px;} .sel_x .sel_body_top{height:32px;width:100%;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 -41px;} .sel_x .sel_body_title{float:left;width:100%;height:31px;} .sel_x .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url("../../api0.map.bdimg.com/images/bgs.gif") no-repeat -122px -384px;} .sel_x .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_x .sel_body_button{float:left;width:55px;margin-left:-55px;padding-top:8px;} .sel_x .sel_body_button a{} .sel_x .sel_body_body{} .sel_x .sel_body_body_div{padding:5px 5px 0 5px;} .sel_x .sel_bottom{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -415px;height:4px;font-size:0px;} .sel_x1{margin-top:5px;width:329px;overflow:hidden;} .sel_x1 .sel_top{background:url("../../api0.map.bdimg.com/images/bgs.gif") no-repeat 0 -418px;height:4px;font-size:0px;} .sel_x1 .sel_body_top{height:32px;width:100%;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 -41px} .sel_x1 .sel_body_title{float:left;width:100%;height:31px;cursor:pointer;} .sel_x1 .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url("../../api0.map.bdimg.com/images/bgs.gif") no-repeat -122px -384px;} .sel_x1 .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_x1 .sel_body_button{float:left;width:55px;height:31px;margin-left:-55px;} .sel_x1 .sel_body_button a{display:none;} .sel_x1 .sel_body_body{display:none;height:0px;} .sel_x1 .sel_body_body_div{padding:5px 5px 0 5px;} .sel_x1 .sel_bottom{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -415px;height:4px;font-size:0px;} .sel_body_citylist{height:100px;padding: 0 0 0 5px} .sel_body_resitem{table-layout:fixed;overflow-x:hidden;overflow-y:hidden;} .sel_body_resitem table {margin-right:5px;} .sel_body_resitem tr{cursor:pointer;} .sel_body_resitem th{padding-top:5px;padding-left:5px;text-align:left;vertical-align:top;width:22px;} .sel_body_resitem th div.iconbg{background:url("../../api0.map.bdimg.com/images/markers_new_ie6.png") no-repeat scroll 0 0;height:29px;width:24px;} .sel_body_resitem th div.icon{cursor:pointer} .sel_body_resitem th div#no_0_1, .sel_body_resitem th div#no_1_1{background-position:0 -64px} .sel_body_resitem th div#no_0_2, .sel_body_resitem th div#no_1_2{background-position:-24px -64px} .sel_body_resitem th div#no_0_3, .sel_body_resitem th div#no_1_3{background-position:-48px -64px} .sel_body_resitem th div#no_0_4, .sel_body_resitem th div#no_1_4{background-position:-72px -64px} .sel_body_resitem th div#no_0_5, .sel_body_resitem th div#no_1_5{background-position:-96px -64px} .sel_body_resitem th div#no_0_6, .sel_body_resitem th div#no_1_6{background-position:-120px -64px} .sel_body_resitem th div#no_0_7, .sel_body_resitem th div#no_1_7{background-position:-144px -64px} .sel_body_resitem th div#no_0_8, .sel_body_resitem th div#no_1_8{background-position:-168px -64px} .sel_body_resitem th div#no_0_9, .sel_body_resitem th div#no_1_9{background-position:-192px -64px} .sel_body_resitem th div#no_0_10, .sel_body_resitem th div#no_1_10{background-position:-216px -64px} .sel_body_resitem td{line-height:160%;padding:3px 0 3px 3px;vertical-align:top;} .sel_body_resitem div.ra_td_title{float:left;margin-right:40px;} .sel_body_resitem div.ra_td_button{float:right; width:40px;} .sel_body_resitem div.ra_td_button input{height:18px;font-size:12px;width:40px;} .sel_body_resitem div.clear{clear:both;height:0px;width:100%;} .sel_body_resitem td .selBtn {width:70px;height:29px;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat -21px -81px;text-align:center;line-height:29px;visibility:hidden;color:#b35900;display:inline-block;*display:inline;*zoom:1;} .sel_body_resitem td .list_street_view_poi {display:inline-block;float:none;margin-right:6px;position:static;*vertical-align:-3px;_vertical-align:-5px;*display:inline;*zoom:1;} .selInfoWndBtn {width:70px;height:29px;background:url("../../api0.map.bdimg.com/images/addrPage.png-v=20121107") no-repeat -21px -81px;text-align:center;line-height:29px;margin: 0 auto;cursor:pointer;color:#b35900} .sel_body_body td a{text-decoration: none; cursor: auto; } .sel_body_body td a:hover,.sel_body_body td a:focus{text-decoration:underline; }.panoInfoBox{cursor:pointer}.panoInfoBox{position:relative;width:323px;height:101px;margin-bottom:4px;cursor:pointer}.panoInfoBox .panoInfoBoxTitleBg{width:323px;height:19px;position:absolute;left:0;bottom:0;z-index:2;background-color:#000;opacity:.7}.panoInfoBox .panoInfoBoxTitleContent{font-size:12px;color:#fff;position:absolute;bottom:2px;left:5px;z-index:3;text-decoration:none}.pano_switch_left,.pano_switch_right{position:absolute;width:28px;height:28px;border:1px solid gray;cursor:pointer;background:url(http://api0.map.bdimg.com/images/panorama/switch_control.png) no-repeat}.pano_switch_left{background-position:-28px 0}.pano_switch_right{background-position:-28px -28px}.pano_switch_left:hover{background-position:0 0}.pano_switch_right:hover{background-position:0 -28px}.pano_switch_left.pano_switch_disable,.pano_switch_right.pano_switch_disable{background:none;border:none}.pano_poi_4,.pano_poi_2,.pano_poi_1{display:inline-block;width:16px;height:16px;vertical-align:middle;background:url("../../webmap1.map.bdimg.com/newmap/static/common/images/pano_whole/guide_icons_4b871b2.png") no-repeat;_background:url(http://webmap0.map.bdimg.com/newmap/static/common/images/pano_whole/guide_icons-8_71d5176.png) no-repeat;background-position:0 0}.pano_photo_arrow_l,.pano_photo_arrow_r{position:absolute;top:0;width:20px;height:100%;background:rgb(243,238,238)}.pano_photo_arrow_l{left:0}.pano_photo_arrow_r{right:0}.pano_arrow_r,.pano_arrow_l{display:inline-block;width:18px;height:18px;background:url("../../webmap0.map.bdimg.com/newmap/static/common/images/pano_whole/pano-icons_223a291.png") no-repeat;_background:url(http://webmap0.map.bdimg.com/newmap/static/common/images/pano_whole/pano-icons-8_0878d3c.png) no-repeat}.pano_arrow_l{background-position:0 -36px}.pano_arrow_r{background-position:-54px -36px}.pano_photo_arrow_l:hover .pano_arrow_l{background-position:-18px -36px}.pano_photo_arrow_r:hover .pano_arrow_r{background-position:-72px -36px}.pano_photo_arrow_l.pano_arrow_disable .pano_arrow_l{background-position:-36px -36px}.pano_photo_arrow_r.pano_arrow_disable .pano_arrow_r{background-position:-90px -36px}.pano_photo_item{position:relative;float:left;line-height:0;padding-left:8px}.pano_photo_decs{position:absolute;bottom:1px;left:0;padding:2px 0;text-indent:5px;margin-left:8px;display:inline-block;color:white;background:black;opacity:0.5;filter:alpha(opacity=50)9;text-overflow:ellipsis;overflow:hidden;white-space:nowrap}.pano_photo_item img{display:inline-block;border:solid 1px #ccd2dc;cursor:pointer}.pano_photo_item:hover img{border-color:rgb(0,94,252)}.pano_photo_item_seleted{position:absolute;top:0;left:-100000px;border:3px solid rgb(9,125,243)}</style></head>
  <body>
  <div class="container">
  	<div class="row">
            
     </div>
  </div>
  <div class="container" style="margin-top:10px;margin-left:0px;">

	<div class="row">
		<form id="submit_form" action="http://erescue.wabestway.com:8080/CPICRescue/order/create" class="form-horizontal" method="post">
		<input type="hidden" name="CSRFToken" value="22846913064284119078410266140377064020321126267567">
		<div class="col-md-8">
			<div class="panel panel-default">
			    <div id="allmap" style="z-index: 0; height: 500px; overflow: hidden; position: relative; color: rgb(0, 0, 0); text-align: left; background-color: rgb(243, 241, 236);"><div style="overflow: visible; position: absolute; z-index: 0; left: 0px; top: 0px; cursor: url(http://api0.map.bdimg.com/images/openhand.cur) 8 8, default;"><div class="BMap_mask" style="position: absolute; left: 0px; top: 0px; z-index: 9; overflow: hidden; -webkit-user-select: none; width: 748px; height: 500px;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;"><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 800;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 700;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 600;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 500;"><label class="BMapLabel" unselectable="on" style="position: absolute; display: none; cursor: inherit; border: 1px solid rgb(190, 190, 190); padding: 1px; white-space: nowrap; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-family: arial, sans-serif; z-index: -20000; color: rgb(190, 190, 190); background-color: rgb(190, 190, 190);">shadow</label></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 400;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 300;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 201;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;"></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 1;"><div style="position: absolute; overflow: visible; z-index: -100; left: 374px; top: 250px; display: block; -webkit-transform: translate3d(0px, 0px, 0px);"><img src="js/saved_resource" tppabs="js/saved_resource" style="position: absolute; border: none; width: 256px; height: 256px; left: -177px; top: -162px; max-width: none; opacity: 1;"><img src="js/saved_resource(1)" tppabs="js/saved_resource(1)" style="position: absolute; border: none; width: 256px; height: 256px; left: -433px; top: -162px; max-width: none; opacity: 1;"><img src="js/saved_resource(2)" tppabs="js/saved_resource(2)" style="position: absolute; border: none; width: 256px; height: 256px; left: 79px; top: -162px; max-width: none; opacity: 1;"><img src="js/saved_resource(3)" tppabs="js/saved_resource(3)" style="position: absolute; border: none; width: 256px; height: 256px; left: -177px; top: 94px; max-width: none; opacity: 1;"><img src="js/saved_resource(4)" tppabs="js/saved_resource(4)" style="position: absolute; border: none; width: 256px; height: 256px; left: -177px; top: -418px; max-width: none; opacity: 1;"><img src="js/saved_resource(5)" tppabs="js/saved_resource(5)" style="position: absolute; border: none; width: 256px; height: 256px; left: 335px; top: -162px; max-width: none; opacity: 1;"><img src="js/saved_resource(6)" tppabs="js/saved_resource(6)" style="position: absolute; border: none; width: 256px; height: 256px; left: 79px; top: 94px; max-width: none; opacity: 1;"><img src="js/saved_resource(7)" tppabs="js/saved_resource(7)" style="position: absolute; border: none; width: 256px; height: 256px; left: -433px; top: 94px; max-width: none; opacity: 1;"><img src="js/saved_resource(8)" tppabs="js/saved_resource(8)" style="position: absolute; border: none; width: 256px; height: 256px; left: 79px; top: -418px; max-width: none; opacity: 1;"><img src="js/saved_resource(9)" tppabs="js/saved_resource(9)" style="position: absolute; border: none; width: 256px; height: 256px; left: -433px; top: -418px; max-width: none; opacity: 1;"><img src="js/saved_resource(10)" tppabs="js/saved_resource(10)" style="position: absolute; border: none; width: 256px; height: 256px; left: 335px; top: 94px; max-width: none; opacity: 1;"><img src="js/saved_resource(11)" tppabs="js/saved_resource(11)" style="position: absolute; border: none; width: 256px; height: 256px; left: 335px; top: -418px; max-width: none; opacity: 1;"></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 2; display: none;"><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 0; display: none;"></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 10; display: none;"></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 3;"></div></div><div style="overflow: hidden; position: absolute; left: 0px; bottom: 0px; z-index: 2100; width: 100%; height: 30px; -webkit-user-select: none; visibility: hidden; font-size: 12px; color: rgb(54, 54, 54); line-height: 20px;"><div style="width: 1000px; overflow:hidden;"><a target="_blank" title="到百度地图查看此区域" href="javascript:if(confirm('http://map.baidu.com/  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ������·������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://map.baidu.com/'" tppabs="http://map.baidu.com/" style="outline:none;float: left;"><img style="border:none;width:77px;height:32px;vertical-align:bottom;" src="js/copyright_logo.png" tppabs="js/copyright_logo.png"></a><div style="float: left; margin-top: 10px; font-size: 12px;"><span style="margin-left: 10px;"></span><span style="margin-left: 10px;">拍摄日期:</span></div></div></div><div title="退出全景" style="position: absolute; z-index: 1201; top: 10px; right: 10px; width: 17px; height: 16px; cursor: pointer; display: none; background: url(http://api0.map.bdimg.com/images/st-close.png) no-repeat;"></div><div class=" anchorBL" style="height: 32px; position: absolute; z-index: 30; bottom: 0px; right: auto; top: auto; left: 1px;"><a title="到百度地图查看此区域" target="_blank" href="javascript:if(confirm('http://map.baidu.com/?sr=1  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ������·������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://map.baidu.com/?sr=1'" tppabs="http://map.baidu.com/?sr=1" style="outline: none;"><img style="border:none;width:77px;height:32px" src="js/copyright_logo.png" tppabs="js/copyright_logo.png"></a></div><div id="zoomer" style="position:absolute;z-index:0;top:0px;left:0px;overflow:hidden;visibility:hidden;cursor:url(http://api0.map.bdimg.com/images/openhand.cur) 8 8,default"><div class="BMap_zoomer" style="top:0;left:0;"></div><div class="BMap_zoomer" style="top:0;right:0;"></div><div class="BMap_zoomer" style="bottom:0;left:0;"></div><div class="BMap_zoomer" style="bottom:0;right:0;"></div></div><div unselectable="on" class="BMap_contextMenu" style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-family: arial, sans-serif; -webkit-box-shadow: rgb(102, 102, 102) 1px 2px 6px; cursor: url(http://api0.map.bdimg.com/images/openhand.cur) 8 8, default;"><div unselectable="on" style="padding: 2px 6px; margin: 0px 2px; font-size: 14px; line-height: 17px; width: 100px; color: rgb(0, 0, 0); cursor: pointer;"><span>设为救援地点</span></div></div><div unselectable="on" class=" BMap_cpyCtrl BMap_noprint anchorBL" style="cursor: default; white-space: nowrap; color: black; font-style: normal; font-variant: normal; font-weight: normal; font-size: 11px; line-height: 15px; font-family: arial, sans-serif; bottom: 2px; right: auto; top: auto; left: 81px; position: absolute; z-index: 10; background: none;"><span _cid="1" style="display: inline;"><span style="font-size:11px">© 2015 Baidu&nbsp;- Data © <a target="_blank" href="javascript:if(confirm('http://www.navinfo.com/  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ������·������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://www.navinfo.com/'" tppabs="http://www.navinfo.com/" style="display:inline;">NavInfo</a> &amp; <a target="_blank" href="javascript:if(confirm('http://www.cennavi.com.cn/  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ������·������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://www.cennavi.com.cn/'" tppabs="http://www.cennavi.com.cn/" style="display:inline;">CenNavi</a> &amp; <a target="_blank" href="javascript:if(confirm('http://www.365ditu.com/  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ������·������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://www.365ditu.com/'" tppabs="http://www.365ditu.com/" style="display:inline;">道道通</a></span></span></div></div>
        		<div class="table-responsive">
        		<table id="memberOrders-table" class="table table-condensed table-bordered" style="display:none;">
					<tbody><tr style="font-size:14px;">
						<th>状态</th>
						<th>单号</th>
						<th>类型</th>
						<th>来源</th>
						<th>预约时间</th>
						<th>预约地</th>
					</tr>
				</tbody></table>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="panel panel-default">
				<div class="panel-heading">
					输入救援地点定位，或地图上右击定位
			    </div>
			    <div class="panel-body">
    				
    					<input type="hidden" id="longitude" name="longitude">
    					<input type="hidden" id="latitude" name="latitude">
    					
    					<div class="form-group" id="distance-div" style="display:none;">
		                    <label><em id="distance-em"></em></label>
		                </div>
		                
		                <div class="form-group">
		                    <div class="col-sm-12">
			                    <div class="input-group">
			                    	<span class="input-group-addon">地点</span>
				                    <input placeholder="附近的小区/街道/建筑物/商圈" class="form-control" id="fromPlace" name="fromPlace" type="text" value="" autocomplete="off" required="">
				                    <span class="input-group-btn">
				                            <button class="btn btn-default" type="button" id="btn-position">定位</button>
				                    </span>
			                    </div>
			                </div>
		                </div>
		                
		                <!--
		                <div class="form-group">
		                    <div class="col-sm-12">
		                    	<div class="input-group">
		                    	<span class="input-group-addon">目的地</span>
				            	<input class="form-control" id="toPlace" name="toPlace" type="text" value=""/>
			                	</div>
			                </div>
		                </div>
		                -->
		                
		                <div class="form-group col-sm-5">
		       
		                    <div>
				            	<input class="form-control" id="serverDate" name="serverD" type="text" value="2015-01-11" required="">
			                </div>
			                
		                </div>
		                
		                <div class="form-group col-sm-4">
		       
		                    <div>
				            	<input class="form-control" id="serverTime" name="serverT" type="text" value="00:39" required="">
			                </div>
			                
		                </div>
		                
		                <div class="form-group col-sm-6">
		                    <div class="input-group">
		                    	<span class="input-group-addon">人数</span>
				            	<input class="form-control" id="driverNum" name="driverNum" type="number" value="1" required="" min="1">
			                </div>
		                </div>
		                
		                <div class="form-group">
		                    <div class="col-sm-9">
		                    	<div class="input-group">
		                    		<span class="input-group-addon">客户手机</span>
				            		<input class="form-control" id="clientPhone" name="clientPhone" type="text" value="" required="">
			                	</div>
			                </div>
			                <div class="col-sm-3" style="padding-left:0px;margin-top:6px;">
			                	<span class="label label-info" style="font-size:14px;" id="membertype"></span>
			                </div>
		                </div>
		                <div class="form-group">
		                    <div class="col-sm-9">
		                    	<div class="input-group">
		                    	<span class="input-group-addon">客户姓名</span>
				            	<input class="form-control" id="clientName" name="clientName" type="text" value="">
			                	</div>
			                </div>
			                <div class="col-sm-3" style="padding-left:0px;margin-top:6px;">
			                	<span class="label label-warning" style="font-size:14px;" id="clientVirtual">0元</span>
			                </div>
		                </div>
		                
		                <div id="todayordernums_div" style="display:none;">
			                <div class="form-group">
			                	<div class="col-sm-6">
				                    <label><em>&nbsp;&nbsp;</em>总下单量：</label>
				                    <label>
						            	<p class="form-control-static" id="allcount"></p>
						            </label>
					            </div>
					            <div class="col-sm-6">
						            <label><em>&nbsp;&nbsp;</em>本月单量：</label>
				                    <label>
						            	<p class="form-control-static" id="monthcount"></p>
						            </label>
					            </div>
			                </div>
		                </div>
		                
		                <div class="form-group">
		                    <div class="col-sm-12">
		                    	<div class="input-group">
		                    	<span class="input-group-addon">工单来源</span>
				            	<input class="form-control" id="fromSource" name="fromSource" type="text" value="">
			                	</div>
			                </div>
		                </div>
		                
		                <div class="form-group">
		                    <label><em>&nbsp;&nbsp;</em>自动派单：</label>
		                    <label>
				            	<input id="autopaidan" name="autopaidan" type="checkbox">
				            </label>
		                </div>
		                
		                <div id="autopaidan_div" style="display:none;">
			                <div class="form-group">
			                    <label><em>&nbsp;&nbsp;</em>救援人员范围：</label>
			                    <label>
					            	<input value="0" name="driverRange" type="radio" checked="checked">本公司救援人员
					            	<input value="1" name="driverRange" type="radio">全部救援人员
					            </label>
			                </div>
			                
			                <div class="form-group">
			                    <label><em>&nbsp;&nbsp;</em>派单时间：</label>
			                    <label>
					            	<input class="form-control" id="paidanTime" name="paidanTime" type="text" value="2015-01-11 00:39" required="">
					            </label>
			                </div>
		                </div>
		                
		                <div class="form-group">
		                    <label><em>&nbsp;&nbsp;</em>工单备注：</label>
		                    <div class="col-sm-12">
				            	<textarea class="form-control" cols="20" id="memo" name="memo" rows="2"></textarea>
			                </div>
		                </div>
    					
		                <div class="form-group">
			                <label class="col-sm-3 control-label"></label>
			                <input type="button" class="btn btn-primary" id="create-order" value="创建工单">
			                <input type="button" class="btn btn-primary" id="create-order-paidan" value="创建并派单">
			            </div>
			            
			            <div class="table-responsive">
			        		<table id="drivers-table" class="table table-condensed table-bordered">
								<tbody><tr style="font-size:14px;">
									<th>#</th>
									<th>救援人员姓名</th>
									<th>距离(公里)</th>
									<th>本日救援</th>
									<th>本月救援</th>
								</tr>
							</tbody></table>
						</div>
					
        		</div>
			</div>
		</div>
		</form>
		</div>
    	
   
	</div>
	<script type="text/javascript" language="javascript">window.daijia = {ctx : ''};</script>
	<script src="js/jquery-1.11.0.min.js" tppabs="js/jquery-1.11.0.min.js"></script>
	<script src="js/bootstrap.min.js" tppabs="js/bootstrap.min.js"></script>
    <script src="js/sco.modal.js" tppabs="js/sco.modal.js"></script>
    <script src="js/sco.message.js" tppabs="js/sco.message.js"></script>
    <script src="js/sco.confirm.js" tppabs="js/sco.confirm.js"></script>
	<script src="js/api" tppabs="js/api" type="text/javascript"></script><script type="text/javascript" src="js/getscript" tppabs="js/getscript"></script> 
	<script src="js/bootstrap-datetimepicker.min.js" tppabs="js/bootstrap-datetimepicker.min.js"></script>
	<script src="js/bootstrap-datetimepicker.zh-CN.js" tppabs="js/bootstrap-datetimepicker.zh-CN.js"></script>
	<script src="js/jquery.autocomplete.min.js" tppabs="js/jquery.autocomplete.min.js"></script>
	<script type="text/javascript">
	var map = null; //地图对象
	function initialize(){
		var myGeo = new BMap.Geocoder();
		myGeo.getPoint("北京市", function(point){
			if (point) {
				map = new BMap.Map("allmap");  
				map.centerAndZoom(point, 13);
			    map.enableScrollWheelZoom();
			    
			    //右键菜单
			    var contextMenu = new BMap.ContextMenu();
				var txtMenuItem = [{
				   text:'设为救援地点',
				   callback:function(p){
				   		map.clearOverlays();
				   		
				   		var memberMarker = new BMap.Marker(p);  // 创建标注
		    			map.addOverlay(memberMarker);
		    			
		    			markerComplete(p.lng,p.lat);
		    			
		    			var gc = new BMap.Geocoder();
					    gc.getLocation(p, function(rs){
					        var addComp = rs.addressComponents;
					        $("#fromPlace").val(addComp.street+" "+addComp.streetNumber);
					    });         
				   }
				}];
				
				for(var i=0; i < txtMenuItem.length; i++){
					contextMenu.addItem(new BMap.MenuItem(txtMenuItem[i].text,txtMenuItem[i].callback,100));
					if(i==1 || i==3) {
						contextMenu.addSeparator();
					}
				}
				map.addContextMenu(contextMenu); 
			}
			else{
				$.scojs_message("地区"+'北京市'+"位置不准确，请重新编辑地区", $.scojs_message.TYPE_ERROR);
			}
		});
	}
	
	function formCheck(){
		if($("#serverDate").val()=='' || $("#serverTime").val()==''){
			$.scojs_message("服务时间不能为空", $.scojs_message.TYPE_ERROR);
			return false;
		}
		if($("#driverNum").val()==''){
			$.scojs_message("人数不能为空", $.scojs_message.TYPE_ERROR);
			return false;
		}
		if($("#clientPhone").val()==''){
			$.scojs_message("客户手机不能为空", $.scojs_message.TYPE_ERROR);
			return false;
		}
		return true;
	}
	
	$(document).ready(function(){
		
		initialize();
		
		$("#serverDate").datetimepicker({ format: 'yyyy-mm-dd', language: 'zh-CN', minView: 'month', pickDate: true, pickTime: false, inputMask: false, autoclose: true });
		
		$("#serverTime").datetimepicker({ format: 'HH:ii', language: 'zh-CN',minView: 'hour', startView: 'day', pickDate: true, pickTime: true, inputMask: false, autoclose: true,startDate:'2015-01-11' });
		
		$("#paidanTime").datetimepicker({ format: 'yyyy-mm-dd HH:ii', language: 'zh-CN', pickDate: true, pickTime: true, inputMask: false, autoclose: true });
		
		//定位
		$("#btn-position").click(function(){
			if($("#fromPlace").val()==''){
				$.scojs_message("请填写救援地点", $.scojs_message.TYPE_ERROR);
			}
			else{
				map.clearOverlays();
				var local = new BMap.LocalSearch(map, {
		    	  renderOptions:{map: map, autoViewport:true}
		    	});
			    local.search($("#fromPlace").val());
			    
			    map.addEventListener("click",function(e){ 
			    	if(e.overlay){
			    		markerComplete(e.point.lng,e.point.lat);
			    		//$("#fromPlace").val(e.overlay.getTitle());
			    	}
			    });
			}
		});
		
		
		
		//创建工单
		$("#create-order").click(function(){
			if($("#longitude").val()=='' || $("#latitude").val()==''){
				$.scojs_message("请先定位救援地点", $.scojs_message.TYPE_ERROR);
				return false;
			}
			
			var clientPhone=$("#clientPhone").val();
			var isphone=/^\+?\d{3,13}(\-?(\d{6,8}?))?(\-?(\d{4,8}?))*$/; 
			if (!isphone.test(clientPhone)){
				$.scojs_message("客户手机格式不正确", $.scojs_message.TYPE_ERROR);
				return false;
			}
			
			var fc=formCheck();
			if(!fc){
				return false;
			}
			
			issubmit=true;
			
			//禁用按钮
			$("#create-order").attr("disabled",true);
			$("#create-order-paidan").attr("disabled",true);
			
			$.post($("#submit_form").attr("action"),$("#submit_form").serialize(),function(){
				window.opener.location.reload(true);
				window.close();
			});
			
			//$("#submit_form").submit();
		});
		
		//创建并派单
		$("#create-order-paidan").click(function(){
			if($("#longitude").val()=='' || $("#latitude").val()==''){
				$.scojs_message("请先定位救援地点", $.scojs_message.TYPE_ERROR);
				return false;
			}
			//如果没选自动派单
			if(!$("#autopaidan")[0].checked){
				if($("input[name=check_drivers]:checked").length!=$("#driverNum").val()){
					$.scojs_message("需要选择"+$("#driverNum").val()+"名救援人员", $.scojs_message.TYPE_ERROR);
					return false;
				}
			}
			
			var clientPhone=$("#clientPhone").val();
			var isphone=/^\+?\d{3,13}(\-?(\d{6,8}?))?(\-?(\d{4,8}?))*$/; 
			if (!isphone.test(clientPhone)){
				$.scojs_message("客户手机格式不正确", $.scojs_message.TYPE_ERROR);
				return false;
			}
			
			var fc=formCheck();
			if(!fc){
				return false;
			}
			
			issubmit=true;
			
			//禁用按钮
			$("#create-order").attr("disabled",true);
			$("#create-order-paidan").attr("disabled",true);
			
			$("#submit_form").attr("action",'/order/createAndPaidan');
			
			$.post($("#submit_form").attr("action"),$("#submit_form").serialize(),function(){
				window.opener.location.reload(true);
				window.close();
			});
			
			//$("#submit_form").submit();
			
		});
		
		//根据客户手机获取信息
		$("#clientPhone").change(function(){
			$.get('/member/findByPhone',{'phone':$(this).val()},function(data){
    			if(data.success){
    				$("#clientName").val(data.object.name);
    				$("#clientVirtual").text(data.object.member.virtual+"元");
    				
    				$("#allcount").html(data.countnum);
    				$("#monthcount").html(data.longValue);
    				$("#membertype").html(data.object.member.type);
    				$("#todayordernums_div").slideDown();
    				
    				if(data.data && data.data.length>0){
    					$(".memberOrders-tr").remove();
    					$(data.data).each(function(index,element){
	    					var content="<tr class='memberOrders-tr'>";
    						if(element.status==0){
    							content+="<td><span class='label label-info'>新工单</span></td>";
							}
    						else if(element.status==1){
    							content+="<td><span class='label label-warning'>已派单</span></td>";
							}
							else{
								content+="<td><span class='label label-danger'>服务中</span></td>";
							}
    						content+="<td><a target='_blank' href='http://erescue.wabestway.com:8080/order/detail/"+element.id+"'>***"+element.orderNumber.substring(8)+"</a></td>"+
									"<td>"+element.orderType+"</td>"+
									"<td>"+element.fromSource+"</td>"+
									"<td>"+element.serverTimeHI+"</td>"+
									"<td>"+element.fromPlace+"</td>"+
									"<tr>";
    						$("#memberOrders-table tbody").append(content);
    					});
    					
    					$("#memberOrders-table").show();
    				}
    				else{
    					$("#memberOrders-table").hide();
    				}
    				
    			}
    			else{
    				$("#todayordernums_div p").html('');
    				$("#todayordernums_div").slideUp();
    				$("#memberOrders-table").hide();
    				$("#clientVirtual").text("0元");
    				$("#membertype").html("");
    			}
    		});
		});
		
		//自动派单
		$("#autopaidan").click(function(e){
			if(this.checked){
				$("#create-order").attr("disabled",true);
				$("#autopaidan_div").slideDown();
			}
			else{
				$("#create-order").attr("disabled",false);
				$("#autopaidan_div").slideUp();
			}
		});
		
		//回车监控
		document.onkeydown = function(e){ 
		    var ev = document.all ? window.event : e;
		    if(ev.keyCode==13) {
		    	$("#btn-position").click();
		    }
		}
		
		//预约地自动补全
		$('#fromPlace').AutoComplete({
            'data': "/order/getHistoryInputedPlace",
			'ajaxDataType': 'json',
            'itemHeight': 24,
            'width': 'auto',
            'async': true,
            'listStyle': 'custom',
	        'emphasis': false,
	        'matchHandler': function(keyword, data){
	            return true;
	        },
	        'createItemHandler': function(index, data){
	            return "<span>"+data.address+"</span>";
	        },
	        'afterSelectedHandler': function(data){
	        	$("#fromPlace").val(data.address);
	        	
	            $("#btn-position").click();
	            
	            markerComplete(data.longitude,data.latitude);
	        }
        }).AutoComplete('show');
		
	});	
	
	//改变驾车路线回调
	var markerComplete = function (lng,lat){
	  
		$("#longitude").val(lng);
		$("#latitude").val(lat);
		
		//附近救援人员
	    $.get('/driver/listdistance',{'longitude':lng,'latitude':lat},function(data){
	    	$(".drivers-tr").remove();
			if(data && data.length>0){
				$(data).each(function(i,driver){
					var content="<tr class='drivers-tr'>"+
								"<td><input type='checkbox' name='check_drivers' value='"+driver.id+"' /></td>"+
								"<td>"+driver.realname+"</td>"+
								"<td>"+driver.distance+"</td>"+
								"<td>"+driver.todayOrders+"次</td>"+
								"<td>"+driver.monthOrders+"次</td>"+
								"<tr>";
					$("#drivers-table tbody").append(content);
				});
			}
		});
	}
	
	<!--关闭浏览器 -->  
	var issubmit = false;
	window.onbeforeunload = function () {
		if(!issubmit){
			return ("您确认要离开该页面吗?");
		}
	}  
	</script>
	
  
<div class="datetimepicker datetimepicker-dropdown-bottom-right dropdown-menu" style="left: 811px; z-index: 1040;"><div class="datetimepicker-minutes" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">11 一月 2015</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="minute active">0:00</span><span class="minute">0:05</span><span class="minute">0:10</span><span class="minute">0:15</span><span class="minute">0:20</span><span class="minute">0:25</span><span class="minute">0:30</span><span class="minute">0:35</span><span class="minute">0:40</span><span class="minute">0:45</span><span class="minute">0:50</span><span class="minute">0:55</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-hours" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">11 一月 2015</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="hour active">0:00</span><span class="hour">1:00</span><span class="hour">2:00</span><span class="hour">3:00</span><span class="hour">4:00</span><span class="hour">5:00</span><span class="hour">6:00</span><span class="hour">7:00</span><span class="hour">8:00</span><span class="hour">9:00</span><span class="hour">10:00</span><span class="hour">11:00</span><span class="hour">12:00</span><span class="hour">13:00</span><span class="hour">14:00</span><span class="hour">15:00</span><span class="hour">16:00</span><span class="hour">17:00</span><span class="hour">18:00</span><span class="hour">19:00</span><span class="hour">20:00</span><span class="hour">21:00</span><span class="hour">22:00</span><span class="hour">23:00</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-days" style="display: block;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">一月 2015</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr><tr><th class="dow">日</th><th class="dow">一</th><th class="dow">二</th><th class="dow">三</th><th class="dow">四</th><th class="dow">五</th><th class="dow">六</th></tr></thead><tbody><tr><td class="day old">28</td><td class="day old">29</td><td class="day old">30</td><td class="day old">31</td><td class="day">1</td><td class="day">2</td><td class="day">3</td></tr><tr><td class="day">4</td><td class="day">5</td><td class="day">6</td><td class="day">7</td><td class="day">8</td><td class="day">9</td><td class="day">10</td></tr><tr><td class="day active">11</td><td class="day">12</td><td class="day">13</td><td class="day">14</td><td class="day">15</td><td class="day">16</td><td class="day">17</td></tr><tr><td class="day">18</td><td class="day">19</td><td class="day">20</td><td class="day">21</td><td class="day">22</td><td class="day">23</td><td class="day">24</td></tr><tr><td class="day">25</td><td class="day">26</td><td class="day">27</td><td class="day">28</td><td class="day">29</td><td class="day">30</td><td class="day">31</td></tr><tr><td class="day new">1</td><td class="day new">2</td><td class="day new">3</td><td class="day new">4</td><td class="day new">5</td><td class="day new">6</td><td class="day new">7</td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">2015</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="month active">一月</span><span class="month">二月</span><span class="month">三月</span><span class="month">四月</span><span class="month">五月</span><span class="month">六月</span><span class="month">七月</span><span class="month">八月</span><span class="month">九月</span><span class="month">十月</span><span class="month">十一月</span><span class="month">十二月</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">2010-2019</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="year old">2009</span><span class="year">2010</span><span class="year">2011</span><span class="year">2012</span><span class="year">2013</span><span class="year">2014</span><span class="year active">2015</span><span class="year">2016</span><span class="year">2017</span><span class="year">2018</span><span class="year">2019</span><span class="year old">2020</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div></div><div class="datetimepicker datetimepicker-dropdown-bottom-right dropdown-menu" style="left: 917.65625px; z-index: 1080;"><div class="datetimepicker-minutes" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: hidden;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">11 一月 2015</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="minute active">0:00</span><span class="minute">0:05</span><span class="minute">0:10</span><span class="minute">0:15</span><span class="minute">0:20</span><span class="minute">0:25</span><span class="minute">0:30</span><span class="minute">0:35</span><span class="minute">0:40</span><span class="minute">0:45</span><span class="minute">0:50</span><span class="minute">0:55</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-hours" style="display: block;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: hidden;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">11 一月 2015</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="hour active">0:00</span><span class="hour">1:00</span><span class="hour">2:00</span><span class="hour">3:00</span><span class="hour">4:00</span><span class="hour">5:00</span><span class="hour">6:00</span><span class="hour">7:00</span><span class="hour">8:00</span><span class="hour">9:00</span><span class="hour">10:00</span><span class="hour">11:00</span><span class="hour">12:00</span><span class="hour">13:00</span><span class="hour">14:00</span><span class="hour">15:00</span><span class="hour">16:00</span><span class="hour">17:00</span><span class="hour">18:00</span><span class="hour">19:00</span><span class="hour">20:00</span><span class="hour">21:00</span><span class="hour">22:00</span><span class="hour">23:00</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-days" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: hidden;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">一月 2015</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr><tr><th class="dow">日</th><th class="dow">一</th><th class="dow">二</th><th class="dow">三</th><th class="dow">四</th><th class="dow">五</th><th class="dow">六</th></tr></thead><tbody><tr><td class="day old disabled">28</td><td class="day old disabled">29</td><td class="day old disabled">30</td><td class="day old disabled">31</td><td class="day disabled">1</td><td class="day disabled">2</td><td class="day disabled">3</td></tr><tr><td class="day disabled">4</td><td class="day disabled">5</td><td class="day disabled">6</td><td class="day disabled">7</td><td class="day disabled">8</td><td class="day disabled">9</td><td class="day disabled">10</td></tr><tr><td class="day">11</td><td class="day">12</td><td class="day">13</td><td class="day">14</td><td class="day">15</td><td class="day">16</td><td class="day">17</td></tr><tr><td class="day">18</td><td class="day">19</td><td class="day">20</td><td class="day">21</td><td class="day">22</td><td class="day">23</td><td class="day">24</td></tr><tr><td class="day">25</td><td class="day">26</td><td class="day">27</td><td class="day">28</td><td class="day">29</td><td class="day">30</td><td class="day">31</td></tr><tr><td class="day new">1</td><td class="day new">2</td><td class="day new">3</td><td class="day new">4</td><td class="day new">5</td><td class="day new">6</td><td class="day new">7</td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: hidden;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">2015</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="month">一月</span><span class="month">二月</span><span class="month">三月</span><span class="month">四月</span><span class="month">五月</span><span class="month">六月</span><span class="month">七月</span><span class="month">八月</span><span class="month">九月</span><span class="month">十月</span><span class="month">十一月</span><span class="month">十二月</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: hidden;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">2010-2019</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="year old disabled">2009</span><span class="year disabled">2010</span><span class="year disabled">2011</span><span class="year disabled">2012</span><span class="year disabled">2013</span><span class="year disabled">2014</span><span class="year">2015</span><span class="year">2016</span><span class="year">2017</span><span class="year">2018</span><span class="year">2019</span><span class="year old">2020</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div></div><div class="datetimepicker datetimepicker-dropdown-bottom-right dropdown-menu" style="left: 0px; z-index: 1120;"><div class="datetimepicker-minutes" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">11 一月 2015</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="minute">0:00</span><span class="minute">0:05</span><span class="minute">0:10</span><span class="minute">0:15</span><span class="minute">0:20</span><span class="minute">0:25</span><span class="minute">0:30</span><span class="minute active">0:35</span><span class="minute">0:40</span><span class="minute">0:45</span><span class="minute">0:50</span><span class="minute">0:55</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-hours" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">11 一月 2015</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="hour active">0:00</span><span class="hour">1:00</span><span class="hour">2:00</span><span class="hour">3:00</span><span class="hour">4:00</span><span class="hour">5:00</span><span class="hour">6:00</span><span class="hour">7:00</span><span class="hour">8:00</span><span class="hour">9:00</span><span class="hour">10:00</span><span class="hour">11:00</span><span class="hour">12:00</span><span class="hour">13:00</span><span class="hour">14:00</span><span class="hour">15:00</span><span class="hour">16:00</span><span class="hour">17:00</span><span class="hour">18:00</span><span class="hour">19:00</span><span class="hour">20:00</span><span class="hour">21:00</span><span class="hour">22:00</span><span class="hour">23:00</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-days" style="display: block;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">一月 2015</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr><tr><th class="dow">日</th><th class="dow">一</th><th class="dow">二</th><th class="dow">三</th><th class="dow">四</th><th class="dow">五</th><th class="dow">六</th></tr></thead><tbody><tr><td class="day old">28</td><td class="day old">29</td><td class="day old">30</td><td class="day old">31</td><td class="day">1</td><td class="day">2</td><td class="day">3</td></tr><tr><td class="day">4</td><td class="day">5</td><td class="day">6</td><td class="day">7</td><td class="day">8</td><td class="day">9</td><td class="day">10</td></tr><tr><td class="day active">11</td><td class="day">12</td><td class="day">13</td><td class="day">14</td><td class="day">15</td><td class="day">16</td><td class="day">17</td></tr><tr><td class="day">18</td><td class="day">19</td><td class="day">20</td><td class="day">21</td><td class="day">22</td><td class="day">23</td><td class="day">24</td></tr><tr><td class="day">25</td><td class="day">26</td><td class="day">27</td><td class="day">28</td><td class="day">29</td><td class="day">30</td><td class="day">31</td></tr><tr><td class="day new">1</td><td class="day new">2</td><td class="day new">3</td><td class="day new">4</td><td class="day new">5</td><td class="day new">6</td><td class="day new">7</td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">2015</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="month active">一月</span><span class="month">二月</span><span class="month">三月</span><span class="month">四月</span><span class="month">五月</span><span class="month">六月</span><span class="month">七月</span><span class="month">八月</span><span class="month">九月</span><span class="month">十月</span><span class="month">十一月</span><span class="month">十二月</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">2010-2019</th><th class="next" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="year old">2009</span><span class="year">2010</span><span class="year">2011</span><span class="year">2012</span><span class="year">2013</span><span class="year">2014</span><span class="year active">2015</span><span class="year">2016</span><span class="year">2017</span><span class="year">2018</span><span class="year">2019</span><span class="year old">2020</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div></div><div class="ac" style="font-size: 14px; top: 100px; left: 864px;"><ul></ul></div></body></html>