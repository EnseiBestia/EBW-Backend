var map = null; //地图对象
var circle = null;

var kongxian=0;//空闲
var jiedan=0;//已派单
var manglu=0;//前往预约地
var daokehu=0;//等待客户
var startdrive=0;//前往目的地
var dengdaijie=0;//等待接
var fancheng=0;//返程
var lixian=0;//未上班
var workcar=0;//工作车

var ctx=window.daijia.ctx;
var longitude=window.daijia.longitude;
var latitude=window.daijia.latitude;
var orderid=window.daijia.orderid;
var orderNumber=window.daijia.orderNumber;

var point = new BMap.Point(longitude,latitude);

var memberArr=[];//救援人员标记集合

function paigeita(id){
	if(window.confirm('确认要派单给该救援人员吗？')){
		$.post(ctx+'/order/paidan',{'driverid':id,'orderid':orderid},function(data){
			if(data.success){
				var result=eval('(' + data.result + ')');
				var dm=getMarkerByDriverId(result.driverID,2);
		    	if(null!=dm){
		    		
		    		$.scojs_message('派单成功', $.scojs_message.TYPE_OK);
					$(".tcb-btn").hide();//隐藏派单按钮
					$(".tcb-btn").parent().parent().hide();
					
		    		var thisdm=$("#driver_marker_"+result.driverID+"");
		    		thisdm.find(".em-kongxian").removeClass("em-kongxian").addClass("em-jiedan");
		    		
		    		--kongxian;
		    		++jiedan;
		    		updateDriverStatusNum();
		    		
		    		window.location.href=ctx+"/order/list";
		    	}
			}
			else{
				$.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
			}
		});
	}
}

function close_driver_window(thiswindow){
	$(thiswindow).parent().parent().fadeOut(200);
}
    
function initialize(){

	map = new BMap.Map("allmap");  
	map.centerAndZoom(point, 14);
    map.enableScrollWheelZoom();
    
    var marker = new BMap.Marker(point);  // 创建标注
	map.addOverlay(marker);
	
	circle = new BMap.Circle(point,2000);//默认2公里
	map.addOverlay(circle);
    
    getDrivers();
    
    //建立长连接
	var sock = new SockJS('http://' + window.location.host + '/push', null, {
		  debug:true,
         'protocols_whitelist': ['websocket', 'xhr-streaming','iframe-eventsource', 'iframe-htmlfile','xhr-polling', 'jsonp-polling'] });
	
	sock.onopen = function() {
		sock.send("{'command':'connected','userId':"+window.daijia.userId+"}");
	};
	
	sock.onmessage = function(evt) {
		
		var result = $.parseJSON(evt.data);
		
	    if(result.type == "driverOnline"){//救援人员上线
	    	var dm=getMarkerByDriverId(result.driverID,1);
	    	if(null!=dm){

	    		var thisdm=$("#driver_marker_"+result.driverID+"");
	    		thisdm.find(".em-lixian").removeClass("em-lixian").addClass("em-kongxian");
	    		
	    		--lixian;
	    		++kongxian;
	    		updateDriverStatusNum();
	    	}
	    	$.scojs_message(result.driverName+"已经上线", $.scojs_message.TYPE_OK);
	    }
	    else if(result.type == "driverOffline"){//救援人员下线
	    	var dm=getMarkerByDriverId(result.driverID,0);
	    	if(null!=dm){
	    		var thisdm=$("#driver_marker_"+result.driverID+"");
	    		thisdm.find(".em-kongxian").removeClass("em-kongxian").addClass("em-lixian");
	    		--kongxian;
	    		++lixian;
	    		updateDriverStatusNum();
	    	}
	    	
	    }
	    else if(result.type == "paidan"){//派单
	    	var dm=getMarkerByDriverId(result.driverID,2);
	    	if(null!=dm){
	    		
	    		$.scojs_message('派单成功', $.scojs_message.TYPE_OK);
				$(".tcb-btn").hide();//隐藏派单按钮
				$(".tcb-btn").parent().parent().hide();
				
	    		var thisdm=$("#driver_marker_"+result.driverID+"");
	    		thisdm.find(".em-kongxian").removeClass("em-kongxian").addClass("em-jiedan");
	    		
	    		--kongxian;
	    		++jiedan;
	    		updateDriverStatusNum();
	    		
	    		window.location.href=ctx+"/order/list";
	    	}
	    }
	    else if(result.type == "cancel"){//销单
	    	if(result.oldOrderStatus==0){
	    		
	    	}
	    	else{
	    		var dm=getMarkerByDriverId(result.driverID,1);
		    	if(null!=dm){
		    		
		    		var thisdm=$("#driver_marker_"+result.driverID+"");
		    		thisdm.find(".em-jiedan").removeClass("em-jiedan").addClass("em-kongxian");
		    		
		    		--jiedan;
		    		++kongxian;
		    		updateDriverStatusNum();
		    	}
	    	}
	    }
	    else if(result.type == "powercancel"){//强制销单
    		var dm=getMarkerByDriverId(result.driverID,1);
	    	if(null!=dm){
	    		
	    		var thisdm=$("#driver_marker_"+result.driverID+"");
	    		thisdm.find(".em-manglu").removeClass("em-manglu").addClass("em-kongxian");
	    		
	    		--manglu;
	    		++kongxian;
	    		updateDriverStatusNum();
	    	}
	    	
	    }
	    else if(result.type == "revoke"){//收回
	    	var dm=getMarkerByDriverId(result.driverID,1);
	    	if(null!=dm){

	    		var thisdm=$("#driver_marker_"+result.driverID+"");
	    		thisdm.find(".em-jiedan").removeClass("em-jiedan").addClass("em-kongxian");
	    		
	    		--jiedan;
	    		++kongxian;
	    		updateDriverStatusNum();
	    	}
	    }
	    else if(result.type == "accept"){//接受工单 开始救援
	    	var dm=getMarkerByDriverId(result.driverID,3);
	    	if(null!=dm){

	    		var thisdm=$("#driver_marker_"+result.driverID+"");
	    		thisdm.find(".em-jiedan").removeClass("em-jiedan").addClass("em-manglu");
	    		
	    		--jiedan;
	    		++manglu;
	    		updateDriverStatusNum();
	    		
	    	}
	    }
	    else if(result.type == "finish"){//完成
	    	$.scojs_message(result.message, $.scojs_message.TYPE_OK);
	    	var dm=getMarkerByDriverId(result.driverID,1);
	    	if(null!=dm){

	    		var thisdm=$("#driver_marker_"+result.driverID+"");
	    		thisdm.find(".em-manglu").removeClass("em-manglu").addClass("em-kongxian");
	    		
	    		--manglu;
	    		++kongxian;
	    		updateDriverStatusNum();
	    	}
	    }
	    else if(result.type == "driverPowerOffline"){//强制下线
	    	var dm=getMarkerByDriverId(result.driverID,0);
	    	if(null!=dm){
	    		var thisdm=$("#driver_marker_"+result.driverID+"");
	    		thisdm.removeClass().addClass("em-lx driver_marker_class");
	    		$(thisdm.find("div")[0]).removeClass().addClass("em-lixian");
	    		
	    		if(result.lastStatus==0){
	    			
	    		}
	    		else if(result.lastStatus==1){
	    			--kongxian;
		    		++lixian;
		    		updateDriverStatusNum();
	    		}
				else if(result.lastStatus==2){
					--jiedan;
		    		++lixian;	   
		    		updateDriverStatusNum();
				}
				else if(result.lastStatus==3){
					--manglu;
		    		++lixian;	  
		    		updateDriverStatusNum();
				}
	    		
	    	}
	    }
	    else if(result.type == "updateUserLocation"){//更新救援人员坐标
	    	var dm=getMarkerByDriverId(result.driverID,null);
	    	if(dm){
	    		var point = new BMap.Point(result.longitude,result.latitude);
	    		dm.setPosition(point);
	    	}
	    }
	    
    };
    
    sock.onclose = function() {
    	
    };
    
}

function getDrivers(){
	$.get(ctx+'/order/listpaidan',{},function(data){
		if(data && data.length>0){
			$(data).each(function(i,driver){
				
				var detailStatus='';
				if(!driver.workCar){
					//如果不是工作车
					if(driver.status==0){
						detailStatus='lixian';
						++lixian;
					}
					else if(driver.status==1){
						if(null!=driver.applyWorkCar){
							if(driver.applyWorkCar==0){
								detailStatus='dengdaijie';
								++dengdaijie;
							}
							else if(driver.applyWorkCar==1){
								detailStatus='fancheng';
								++fancheng;
							}
						}
						else{
							detailStatus='kongxian';
							++kongxian;
						}
					}
				    else if(driver.status==2){
				    	detailStatus='jiedan';
						++jiedan;
					}
					else if(driver.status==3){
						if(null!=driver.busyStatus){
				    		if(driver.busyStatus==0){
				    			detailStatus='daokehu';
				    			++daokehu;
				    		}
				    		else if(driver.busyStatus==1){
				    			detailStatus='startdrive';
				    			++startdrive;
				    		}
				    	}
						else{
							detailStatus='manglu';
							++manglu;
						}
					}
				}
				else{
					detailStatus='workcar';
					++workcar;
				}
					
				var htm='<div id="driver_marker_'+driver.id+'" class="driver_marker_class" style="position:absolute;z-index:999;width:55px;display:none;">'+
							'<div class="em-lixian">'+driver.realname+'</div>'+
					     '</div>';
				if(!driver.workCar){
					//如果不是工作车
					if(driver.status==1){
						htm='<div id="driver_marker_'+driver.id+'" class="driver_marker_class" style="position:absolute;z-index:999;width:55px;">'+
								'<div class="em-kongxian">'+driver.realname+'</div>'+
						    '</div>';
					}
				    else if(driver.status==2){
				    	htm='<div id="driver_marker_'+driver.id+'" class="driver_marker_class" style="position:absolute;z-index:999;width:55px;display:none;">'+
							'<div class="em-jiedan">'+driver.realname+'</div>'+
					    '</div>';
					}
					else if(driver.status==3){
						htm='<div id="driver_marker_'+driver.id+'" class="driver_marker_class" style="position:absolute;z-index:999;width:55px;display:none;">'+
							'<div class="em-manglu">'+driver.realname+'</div>'+
					    '</div>';
					}
				}
				else{
					htm='<div id="driver_marker_'+driver.id+'" class="driver_workcar_marker_class" data-z-index="9998" style="position:absolute;z-index:9998;width:110px;">'+
				        	'<div class="em-'+detailStatus+'-l"></div>'+
				    		'<div class="em-'+detailStatus+'-con">'+driver.realname+'</div>'+
				            '<div class="em-'+detailStatus+'-r"></div>'+
				        '</div>';
				}
			    
//				if(!driver.workCar){
//					//如果不是工作车
					
				    var driverpoint = new BMap.Point(driver.longitude,driver.latitude);
					var drivermarker = new BMapLib.RichMarker(htm, driverpoint, {"anchor": new BMap.Size(-39, -40), "enableDragging": true});
					drivermarker.driverid=driver.id;
					drivermarker.driverstatus=driver.status;
					
					map.addOverlay(drivermarker);
				
				
					var photo=ctx+'/assets/img/default_avatar.jpg';
					if(driver.photo && driver.photo!=''){
						photo=ctx+'/upload/driver/'+driver.photo;
				    }
					var companyName_All=driver.companyName_All;
					if(companyName_All.length>12){
						companyName_All=companyName_All.substr(0,12)+"...";
					}
					var content='<div id="driver_detail_'+driver.id+'" class="em-tc-box" style="position:absolute;z-index:9999;width:500px;display:none;">'+
							    	'<div class="tcb-con">'+
										'<div class="tcb-close" onclick="close_driver_window(this);"><img src="'+ctx+'/assets/css/images/tcb_close_bg_03.png"></div>'+
										'<dl>'+
									    	'<dt><img src="'+photo+'" width="96" height="96"></dt>'+
									        '<dd>'+
									            '<p>公司：'+companyName_All+'</p>'+
									            '<p>姓名：'+driver.realname+'('+driver.username+')</p>'+
									            '<p>电话：'+driver.phone+'</p>'+
									            '<p>救援次数(日/月)：'+driver.todayOrders+' / '+driver.monthOrders+'</p>'+
									        '</dd>'+
									    '</dl>'+
									    '<div class="tcb-btn" style="display:none;"><a href="javascript:;" id="paigeita_'+driver.id+'" onclick="paigeita('+driver.id+');">将工单'+orderNumber+'派给他/她</a></div>'+
									'</div>'+
								'</div>';
					
					var infowindow = new BMapLib.RichMarker(content, driverpoint, {"anchor": new BMap.Size(-210, -330), "enableDragging": true});
					//救援人员详细
					map.addOverlay(infowindow);
					
					drivermarker.addEventListener("onmouseup", function(e){
						if(e.which==3){
							$(".em-tc-box").fadeOut(0);//隐藏所有面板
							
							infowindow.setPosition(new BMap.Point(map.getCenter().lng,map.getCenter().lat));
							$("#driver_detail_"+driver.id+"").fadeIn(200);//显示当前面板
							
							$(".tcb-btn").hide();//隐藏所有派单按钮
							
							//如果选择了工单 并且救援人员为空闲 显示派单按钮
							var dm=getMarkerByDriverId(driver.id,null);
							if(dm && dm.driverstatus==1){
								$("#paigeita_"+driver.id+"").parent().show();
							}
						}
					}); 
					
					memberArr.push(drivermarker);
				
//				}
			});
		}
		updateDriverStatusNum();
		
	});
	
}

function getMarkerByDriverId(driverid,driverstatus){
	if(memberArr==null || memberArr.length==0){
		return null;
	}
	var dm=null;
	$(memberArr).each(function(index,driverMarker){
		if(driverMarker.driverid == driverid){
			if(driverstatus){
				driverMarker.driverstatus=driverstatus;
			}
			dm=driverMarker;
			return false;
		}
	});
	return dm;
}


function updateDriverStatusNum(){
	
	$("#kongxianDrivers").html(kongxian+dengdaijie+fancheng);
	$("#jiedanDrivers").html(jiedan);
	$("#mangluDrivers").html(manglu+daokehu+startdrive);
	$("#lixianDrivers").html(lixian);
	
	$("#workcarDrivers").html(workcar);
	
	$("#allDrivers").html(lixian+kongxian+jiedan+manglu+workcar+daokehu+startdrive+dengdaijie+fancheng);
	
//	$("#kongxianDrivers").html(kongxian);
//	$("#jiedanDrivers").html(jiedan);
//	$("#mangluDrivers").html(manglu);
//	$("#lixianDrivers").html(lixian);
//	$("#allDrivers").html(lixian+kongxian+jiedan+manglu);
//	$("#workcarDrivers").html(workcar);
	
}

$(document).ready(function(){
	
	initialize();
	
	$("#scope").change(function(){
		circle.remove();
		circle = new BMap.Circle(point,$(this).val());
		map.addOverlay(circle);
	});
	
	$("#refresh-driver").click(function(){
		map.clearOverlays();
		map.addOverlay(new BMap.Marker(point));
		circle = new BMap.Circle(point,$("#scope").val());
		map.addOverlay(circle);
		kongxian=0;
		jiedan=0;
		manglu=0;
		lixian=0;
		memberArr=[];
		getDrivers();
	});
	
	
	var isFullscreen = false;
	var panelHeight = $("#realMap").height();
    var panelWidth = $("#realMap").width();
    var maxWidth = screen.width;
	var maxHeight = document.documentElement.clientHeight-60;
    $("#fullscreen").click(function () {
        if (!isFullscreen) {
            $("#realMap").css("position", "absolute").css("background-color", "#f5f5f5").css("top", 0).css("left", 0).css("width", maxWidth).css("height", maxHeight).css("z-index", "99999");
            $("#allmap").css("height",maxHeight);
            isFullscreen = true;
            $(this).text("退出全屏");
        } else {
            $("#realMap").css("position", "relative").css("width", panelWidth).css("height", panelHeight);
            $("#allmap").css("height",560);
            isFullscreen = false;
            $(this).text("全屏显示");
        }
    });
    
    $("#showAll").click(function(){
    	initializeColor();
    	$("#showAll").removeClass("allstatus").addClass("driver-status allstatus_active");
    	showDriversByStatus(null);
    });
    $("#showKongxian").click(function(){
    	initializeColor();
    	$("#showKongxian").removeClass("kongxian").addClass("driver-status kongxian_active");
    	showDriversByStatus(1);
    });
    $("#showJiedan").click(function(){
    	initializeColor();
    	$("#showJiedan").removeClass("jiedan").addClass("driver-status jiedan_active");
    	showDriversByStatus(2);
    });
    $("#showManglu").click(function(){
    	initializeColor();
    	$("#showManglu").removeClass("manglu").addClass("driver-status manglu_active");
    	showDriversByStatus(3);
    });
    $("#showLixian").click(function(){
    	initializeColor();
    	$("#showLixian").removeClass("lixian").addClass("driver-status lixian_active");
    	showDriversByStatus(0);
    });
    $("#showWorkcar").click(function(){
//    	initializeColor();
//    	$("#showWorkCar").removeClass("workcar").addClass("driver-status workcar_active");
//    	$(".driver_marker_class").hide();
    });
    
});	

function showDriversByStatus(status){
	if(memberArr==null || memberArr.length==0){
		return null;
	}
	if(null!=status){
		$(".driver_marker_class").hide();
		$(memberArr).each(function(index,driverMarker){
			if(null!=driverMarker.driverid && null!=driverMarker.driverstatus && driverMarker.driverstatus==status){
				$("#driver_marker_"+driverMarker.driverid+"").fadeIn(200);
			}
		});
	}
	else{
		$(".driver_marker_class").fadeIn(200);
	}
}

function initializeColor(){
	$("#showAll").removeClass("allstatus_active driver-status").addClass("allstatus");
	$("#showKongxian").removeClass("kongxian_active driver-status").addClass("kongxian");
	$("#showJiedan").removeClass("jiedan_active driver-status").addClass("jiedan");
	$("#showManglu").removeClass("manglu_active driver-status").addClass("manglu");
	$("#showLixian").removeClass("lixian_active driver-status").addClass("lixian");
	$("#showWorkCar").removeClass("workcar_active driver-status").addClass("workcar");
}