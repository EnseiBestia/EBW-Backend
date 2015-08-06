var map = null; //地图对象
var ctx = window.daijia.ctx;

var kongxian=0;//空闲
var jiedan=0;//已派单
var manglu=0;//前往预约地
var daokehu=0;//等待客户
var startdrive=0;//前往目的地
var dengdaijie=0;//等待接
var fancheng=0;//返程
var lixian=0;//未上班
var workcar=0;//工作车

var orderid=null;//当前工单号
var currmarker=null;//当前救援人员标记
var membermarker=null;//客户标记
var memberArr=[];//救援人员标记集合

var mapLoadFinish = false;

//自动刷新
//var time_refresh=60;
//var has_clicked=[];
//has_clicked.push("qwe","asd","zxc");
//function autoRefresh(){
//	var timeID=setTimeout("autoRefresh()",1000);
//	
//	$("#refresh_time").html(time_refresh);
//	if(time_refresh>0){
//		time_refresh--;
//	}
//	else{
//		clearTimeout(timeID);
//		window.location=window.location.href;
//	}
//}

//复制电话号码
function copyPhone(thisbutton,phone){

	
}



//派单
function paigeita(thisbutton,id){
	if(orderid==null){
		$.scojs_message("请先选择一个工单", $.scojs_message.TYPE_ERROR);
		return false;
	}
	if(window.confirm('确认要派单给该救援人员吗？')){
		$.post(ctx+'/order/paidan',{'driverid':id,'orderid':orderid},function(data){
			if(data.success){
				var result=eval('(' + data.result + ')');
				if($("#newOrder_"+result.orderID+"").length>0){
		    		var dm=null;
			    	
			    	if(result.isworkCar){//如果是工作车
			    		dm=getMarkerByDriverId(result.driverID,null);
			    	}
			    	else{
			    		dm=getMarkerByDriverId(result.driverID,"jiedan");
			    	}
			    	
			    	if(null!=dm){
			    		
			    		$.scojs_message('派单成功', $.scojs_message.TYPE_OK);
			    		try{
				    		if (window.webkitNotifications.checkPermission() === 0) {
		    		        	window.webkitNotifications.createNotification(ctx+'/assets/css/images/notice.png', '通知', '工单号：'+result.orderNumber+'已派单').show();
		    		        }
				    	}catch(e){
						}
						orderid=null;//清空当前工单id
						$(".tcb-btn").hide();//隐藏派单按钮
						$(".tcb-btn").parent().parent().hide();
						if(membermarker){
				    		membermarker.remove();
				    	}
						
			    		$("#newOrder_"+result.orderID+"").remove();//移除工单
						
			    		if(!result.isworkCar){//如果不是工作车
			    			var thisdm=$("#driver_marker_"+result.driverID+"");
				    		$(thisdm.find("div")[0]).removeClass().addClass("em-jiedan");
				    		
				    		if($("#showjiedan").hasClass("jiedan_active")){
				    			thisdm.fadeIn(200);
				    		}
				    		else{
				    			thisdm.fadeOut(200);
				    		}
				    		
				    		//更新数量
							if(result.applyWorkCar=="0"){
								--dengdaijie;
							}
							else if(result.applyWorkCar=="1"){
								--fancheng;
							}
							else if(result.applyWorkCar=="-1"){
								--kongxian;
							}
							
				    		++jiedan;
				    		updateDriverStatusNum();
			    		}
			    		
			    	}
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

var initWebSocket = function() {
	//建立长连接
	var sock = new SockJS('http://' + window.location.host + '/push', null, {
		  debug:false,
         'protocols_whitelist': ['websocket', 'xhr-streaming','iframe-eventsource', 'iframe-htmlfile','xhr-polling', 'jsonp-polling'] });
	
	sock.onopen = function() {
		sock.send("{'command':'connected','userId':"+window.daijia.userId+"}");
	};
	
	sock.onmessage = function(evt) {
		
		var result = $.parseJSON(evt.data);
		
//		console.log(result);
		
	    if(result.type == "driverOnline"){//救援人员上线
	    	
	    	var detailStatus=null;
	    	
	    	if(-1 != result.applyWorkCar){
				if(result.applyWorkCar==0){
					detailStatus='dengdaijie';
				}
				else if(result.applyWorkCar==1){
					detailStatus='fancheng';
				}
			}
			else{
				detailStatus='kongxian';
			}
	    	
	    	var dm=getMarkerByDriverId(result.driverID,detailStatus);
	    	if(null!=dm){

	    		//更新颜色
	    		var thisdm=$("#driver_marker_"+result.driverID+"");
	    		$(thisdm.find("div")[0]).removeClass().addClass("em-"+detailStatus+"");
	    		if($("#show"+detailStatus+"").hasClass(""+detailStatus+"_active")){
	    			thisdm.fadeIn(200);
	    		}
	    		else{
	    			thisdm.fadeOut(200);
	    		}
	    		
	    		//更新数量
	    		if(-1 != result.applyWorkCar){
					if(result.applyWorkCar==0){
						++dengdaijie;
					}
					else if(result.applyWorkCar==1){
						++fancheng;
					}
				}
				else{
					++kongxian;
				}
	    		--lixian;
	    		updateDriverStatusNum();
	    		
	    	}
	    	$.scojs_message(result.driverName+"已经上线", $.scojs_message.TYPE_OK);
	    	try{
		        if (window.webkitNotifications.checkPermission() === 0) {
		        	window.webkitNotifications.createNotification(ctx+'/assets/css/images/notice.png', '通知', result.driverName+"已经上线").show();
		        }
		    }catch(e){
			}
	    }
	    else if(result.type == "driverOffline"){//救援人员下线
	    	
	    	var dm=getMarkerByDriverId(result.driverID,"lixian");
	    	if(null!=dm){
	    		
	    		//更新颜色
	    		var thisdm=$("#driver_marker_"+result.driverID+"");
	    		$(thisdm.find("div")[0]).removeClass().addClass("em-lixian");
	    		
	    		if($("#showlixian").hasClass("lixian_active")){
	    			thisdm.fadeIn(200);
	    		}
	    		else{
	    			thisdm.fadeOut(200);
	    		}
	    		
	    		//更新数量
	    		if(-1!=result.applyWorkCar){
					if(result.applyWorkCar==0){
						--dengdaijie;
					}
					else if(result.applyWorkCar==1){
						--fancheng;
					}
				}
				else{
					--kongxian;
				}
	    		++lixian;
	    		updateDriverStatusNum();
	    	}
	    }
	    else if(result.type == "autoPaidan"){
	    	$.scojs_message(result.message, $.scojs_message.TYPE_ERROR);
	    	try{
		    	if (window.webkitNotifications.checkPermission() === 0) {
		        	window.webkitNotifications.createNotification(ctx+'/assets/css/images/notice.png', '通知', result.message).show();
		        }
		    }catch(e){
			}
	    }
	    else if(result.type == "newOrders"){//添加新工单
    		
			if($(".newOrderDivChild").length<10){
				
				$("#newOrderDiv").append('<div style="display:none;" class="w-lc-nr newOrderDivChild" id="newOrder_'+result.orderID+'" data-value="'+result.orderID+'" data-name="'+result.clientName+'" data-longitude="'+result.lng+'" data-latitude="'+result.lat+'" data-orderNum="'+result.orderNumber+'">'+
			        	'<div class="nr-bt"><div class="nr-bt-time">'+result.bookTime+'</div><div class="nr-bt-name">'+result.bookAddress+'</div>'+
			        	'</div>'+
			        '</div>');
				
				$("#newOrder_"+result.orderID+"").fadeIn(1000);
				
				document.getElementById('new_order_play').play();//播放声音
		         
			}
  
	    }
	    else if(result.type == "paidan"){//派单
	    	if($("#newOrder_"+result.orderID+"").length>0){
	    		var dm=null;
		    	
		    	if(result.isworkCar){//如果是工作车
		    		dm=getMarkerByDriverId(result.driverID,null);
		    	}
		    	else{
		    		dm=getMarkerByDriverId(result.driverID,"jiedan");
		    	}
		    	
		    	if(null!=dm){
		    		
		    		$.scojs_message('派单成功', $.scojs_message.TYPE_OK);
		    		try{
			    		if (window.webkitNotifications.checkPermission() === 0) {
	    		        	window.webkitNotifications.createNotification(ctx+'/assets/css/images/notice.png', '通知', '工单号：'+result.orderNumber+'已派单').show();
	    		        }
			    	}catch(e){
					}
					orderid=null;//清空当前工单id
					$(".tcb-btn").hide();//隐藏派单按钮
					$(".tcb-btn").parent().parent().hide();
					if(membermarker){
			    		membermarker.remove();
			    	}
					
		    		$("#newOrder_"+result.orderID+"").remove();//移除工单
					
		    		if(!result.isworkCar){//如果不是工作车
		    			var thisdm=$("#driver_marker_"+result.driverID+"");
			    		$(thisdm.find("div")[0]).removeClass().addClass("em-jiedan");
			    		
			    		if($("#showjiedan").hasClass("jiedan_active")){
			    			thisdm.fadeIn(200);
			    		}
			    		else{
			    			thisdm.fadeOut(200);
			    		}
			    		
			    		//更新数量
						if(result.applyWorkCar=="0"){
							--dengdaijie;
						}
						else if(result.applyWorkCar=="1"){
							--fancheng;
						}
						else if(result.applyWorkCar=="-1"){
							--kongxian;
						}
						
			    		++jiedan;
			    		updateDriverStatusNum();
		    		}
		    		
		    		if(result.ringing){
		    			document.getElementById('new_order_play').play();//播放声音
		    		}
		    		
		    	}
	    	}
	    	
	    }
	    else if(result.type == "yupaidan"){//预派单
	    	
	    	$("#newOrder_"+result.orderID+"").fadeOut(1000);
    		setTimeout(function(){
    			$("#newOrder_"+result.orderID+"").remove();//移除工单
    		}, 1000);
	    		
		}
	    else if(result.type == "cancel"){//销单
	    	if(result.oldOrderStatus==0){
	    		$("#newOrder_"+result.orderID+"").fadeOut(1000);
	    		setTimeout(function(){
	    			$("#newOrder_"+result.orderID+"").remove();//移除工单
	    		}, 1000);
	    	}
	    	else{
	    		
	    		if(!result.isworkCar){//如果不是工作车
	    			var detailStatus=null;
			    	
		    		if(result.applyWorkCar==-1){
						detailStatus='kongxian';
					}
		    		else if(result.applyWorkCar==0){
						detailStatus='dengdaijie';
					}
					else if(result.applyWorkCar==1){
						detailStatus='fancheng';
					}
					
		    		
		    		var dm=getMarkerByDriverId(result.driverID,detailStatus);
			    	if(null!=dm){
			    		
			    		var thisdm=$("#driver_marker_"+result.driverID+"");
			    		$(thisdm.find("div")[0]).removeClass().addClass("em-"+detailStatus+"");
			    		
			    		if($("#show"+detailStatus+"").hasClass(""+detailStatus+"_active")){
			    			thisdm.fadeIn(200);
			    		}
			    		else{
			    			thisdm.fadeOut(200);
			    		}
			    		
			    		//更新数量
		    			if(result.applyWorkCar==-1){
    						++kongxian;
    					}
		    			else if(result.applyWorkCar==0){
    						++dengdaijie;
    					}
    					else if(result.applyWorkCar==1){
    						++fancheng;
    					}
		    			
			    		--jiedan;
			    		updateDriverStatusNum();
			    		
			    	}
		    	}
	    		
	    	}
	    }
	    else if(result.type == "powercancel"){//强制销单
    		
    		var workcarStatus=null;
    		if(result.applyWorkCar==-1){
				workcarStatus='kongxian';
			}
    		else if(result.applyWorkCar==0){
				workcarStatus='dengdaijie';
			}
			else if(result.applyWorkCar==1){
				workcarStatus='fancheng';
			}
    		
    		if(!result.isworkCar){//如果不是工作车
    			var dm=getMarkerByDriverId(result.driverID,workcarStatus);
    	    	if(null!=dm){
    	    		
    	    		var thisdm=$("#driver_marker_"+result.driverID+"");
    	    		$(thisdm.find("div")[0]).removeClass().addClass("em-"+workcarStatus+"");
    	    		
    	    		if($("#show"+workcarStatus+"").hasClass(""+workcarStatus+"_active")){
    	    			thisdm.fadeIn(200);
    	    		}
    	    		else{
    	    			thisdm.fadeOut(200);
    	    		}
    	    		
    	    		//更新数量
        			if(result.kongxian==-1){
    					++kongxian;
    				}
        			else if(result.applyWorkCar==0){
    					++dengdaijie;
    				}
    				else if(result.applyWorkCar==1){
    					++fancheng;
    				}
    	    		
        			if(result.busyStatus==-1){
    					--manglu;
    				}
        			else if(result.busyStatus==0){
    					--daokehu;
    				}
    				else if(result.busyStatus==1){
    					--startdrive;
    				}
    	    		
    	    		updateDriverStatusNum();
    	    	}
    		}
	    	
	    }
	    else if(result.type == "revoke" || result.type == "refuse"){//收回/拒单
	    	
	    	if($(".newOrderDivChild").length<10){
	    		$("#newOrderDiv").append('<div style="display:none;" class="w-lc-nr newOrderDivChild" id="newOrder_'+result.orderID+'" data-value="'+result.orderID+'" data-name="'+result.clientName+'" data-longitude="'+result.lng+'" data-latitude="'+result.lat+'" data-orderNum="'+result.orderNumber+'">'+
			        	'<div class="nr-bt"><div class="nr-bt-time">'+result.bookTime+'</div><div class="nr-bt-name">'+result.bookAddress+'</div>'+
			        	'</div>'+
			        '</div>');
				$("#newOrder_"+result.orderID+"").fadeIn(1000);
			}
	    	
	    	if(!result.isworkCar){//如果不是工作车
	    		var detailStatus=null;
	    		if(result.applyWorkCar==-1){
					detailStatus='kongxian';
				}
	    		if(result.applyWorkCar==0){
					detailStatus='dengdaijie';
				}
				else if(result.applyWorkCar==1){
					detailStatus='fancheng';
				}
		    	
		    	var dm=getMarkerByDriverId(result.driverID,detailStatus);
		    	if(null!=dm){

		    		var thisdm=$("#driver_marker_"+result.driverID+"");
		    		$(thisdm.find("div")[0]).removeClass().addClass("em-"+detailStatus+"");
		    		
		    		if($("#show"+detailStatus+"").hasClass(""+detailStatus+"_active")){
		    			thisdm.fadeIn(200);
		    		}
		    		else{
		    			thisdm.fadeOut(200);
		    		}
		    		
		    		//更新数量
	    			if(result.applyWorkCar==-1){
						++kongxian;
					}
	    			if(result.applyWorkCar==0){
						++dengdaijie;
					}
					else if(result.applyWorkCar==1){
						++fancheng;
					}
		    		
		    		--jiedan;
		    		updateDriverStatusNum();
		    	}
	    	}
	    	
	    }
	    else if(result.type == "powerrevoke"){//强制收回
	    	
	    	if($(".newOrderDivChild").length<10){
	    		
	    		$("#newOrderDiv").append('<div style="display:none;" class="w-lc-nr newOrderDivChild" id="newOrder_'+result.orderID+'" data-value="'+result.orderID+'" data-name="'+result.clientName+'" data-longitude="'+result.lng+'" data-latitude="'+result.lat+'" data-orderNum="'+result.orderNumber+'">'+
			        	'<div class="nr-bt"><div class="nr-bt-time">'+result.bookTime+'</div><div class="nr-bt-name">'+result.bookAddress+'</div>'+
			        	'</div>'+
			        '</div>');
				$("#newOrder_"+result.orderID+"").fadeIn(1000);
			}
    		
    		var workcarStatus=null;
    		if(result.applyWorkCar==-1){
				workcarStatus='kongxian';
			}
    		else if(result.applyWorkCar==0){
				workcarStatus='dengdaijie';
			}
			else if(result.applyWorkCar==1){
				workcarStatus='fancheng';
			}
    		
    		if(!result.isworkCar){//如果不是工作车
    			var dm=getMarkerByDriverId(result.driverID,workcarStatus);
    	    	if(null!=dm){
    	    		
    	    		var thisdm=$("#driver_marker_"+result.driverID+"");
    	    		$(thisdm.find("div")[0]).removeClass().addClass("em-"+workcarStatus+"");
    	    		
    	    		if($("#show"+workcarStatus+"").hasClass(""+workcarStatus+"_active")){
    	    			thisdm.fadeIn(200);
    	    		}
    	    		else{
    	    			thisdm.fadeOut(200);
    	    		}
    	    		
    	    		//更新数量
        			if(result.applyWorkCar==-1){
    					++kongxian;
    				}
        			if(result.applyWorkCar==0){
    					++dengdaijie;
    				}
    				else if(result.applyWorkCar==1){
    					++fancheng;
    				}
    	    		
        			if(result.busyStatus==-1){
    					--manglu;
    				}
        			else if(result.busyStatus==0){
    					--daokehu;
    				}
    				else if(result.busyStatus==1){
    					--startdrive;
    				}
    	    		
    	    		updateDriverStatusNum();
    	    	}
    		}
	    	
	    }
	    else if(result.type == "accept"){//接受工单 开始救援
	    	if(!result.isworkCar){//如果不是工作车
	    		var dm=getMarkerByDriverId(result.driverID,"manglu");
		    	if(null!=dm){

		    		var thisdm=$("#driver_marker_"+result.driverID+"");
		    		$(thisdm.find("div")[0]).removeClass().addClass("em-manglu");
		    		
		    		if($("#showmanglu").hasClass("manglu_active")){
		    			thisdm.fadeIn(200);
		    		}
		    		else{
		    			thisdm.fadeOut(200);
		    		}
		    		
		    		--jiedan;
		    		++manglu;
		    		updateDriverStatusNum();
		    	}
	    	}
	    }
	    else if(result.type == "fillorder"){//补单
	    	
	    	var dm=null;
	    	
	    	if(result.isworkCar){//如果是工作车
	    		dm=getMarkerByDriverId(result.driverID,null);
	    	}
	    	else{
	    		dm=getMarkerByDriverId(result.driverID,"jiedan");
	    	}
	    	
	    	if(null!=dm){
				
	    		if(!result.isworkCar){//如果不是工作车
	    			var thisdm=$("#driver_marker_"+result.driverID+"");
		    		$(thisdm.find("div")[0]).removeClass().addClass("em-jiedan");
		    		
		    		if($("#showjiedan").hasClass("jiedan_active")){
		    			thisdm.fadeIn(200);
		    		}
		    		else{
		    			thisdm.fadeOut(200);
		    		}
		    		
		    		//更新数量
					if(result.applyWorkCar=="0"){
						--dengdaijie;
					}
					else if(result.applyWorkCar=="1"){
						--fancheng;
					}
					else if(result.applyWorkCar=="-1"){
						--kongxian;
					}
					
		    		++jiedan;
		    		updateDriverStatusNum();
		    		
		    		document.getElementById('new_order_play').play();//播放声音
		    		
	    		}
	    		
	    	}
	    	
	    }
	    else if(result.type == "fillorderv2"){//救援人员补单v2 直接接受

	    	var dm=getMarkerByDriverId(result.driverID,"manglu");
	    	if(null!=dm){

	    		if(!result.isworkCar){//如果不是工作车
	    			var thisdm=$("#driver_marker_"+result.driverID+"");
		    		$(thisdm.find("div")[0]).removeClass().addClass("em-manglu");
		    		
		    		if($("#showmanglu").hasClass("manglu_active")){
		    			thisdm.fadeIn(200);
		    		}
		    		else{
		    			thisdm.fadeOut(200);
		    		}
		    		
		    		//更新数量
	    			if(result.applyWorkCar==-1){
						--kongxian;
					}
	    			else if(result.applyWorkCar==0){
						--dengdaijie;
					}
					else if(result.applyWorkCar==1){
						--fancheng;
					}
		    		
		    		++manglu;
		    		updateDriverStatusNum();
		    		
		    		document.getElementById('new_order_play').play();//播放声音
	    		}
	    		
	    	}
	    }
	    else if(result.type == "getrushorder"){//救援人员抢单 直接接受
	    	var dm=getMarkerByDriverId(result.driverID,"manglu");
	    	if(null!=dm){
	    		
	    		$("#newOrder_"+result.orderID+"").fadeOut(1000);
	    		setTimeout(function(){
	    			$("#newOrder_"+result.orderID+"").remove();//移除工单
	    		}, 1000);

	    		var thisdm=$("#driver_marker_"+result.driverID+"");
	    		$(thisdm.find("div")[0]).removeClass().addClass("em-manglu");
	    		
	    		if($("#showmanglu").hasClass("manglu_active")){
	    			thisdm.fadeIn(200);
	    		}
	    		else{
	    			thisdm.fadeOut(200);
	    		}
	    		
	    		//更新数量
    			if(result.applyWorkCar==-1){
					--kongxian;
				}
    			else if(result.applyWorkCar==0){
					--dengdaijie;
				}
				else if(result.data.applyWorkCar==1){
					--fancheng;
				}
				
	    		
	    		++manglu;
	    		updateDriverStatusNum();
	    	}
	    }
	    else if(result.type == "arriveplace"){//到达客户预约地
	    	var dm=getMarkerByDriverId(result.driverID,"daokehu");
	    	if(null!=dm){
	    		if(!result.isworkCar){//如果不是工作车
	    			var thisdm=$("#driver_marker_"+result.driverID+"");
		    		$(thisdm.find("div")[0]).removeClass().addClass("em-daokehu");
		    		
		    		if($("#showdaokehu").hasClass("daokehu_active")){
		    			thisdm.fadeIn(200);
		    		}
		    		else{
		    			thisdm.fadeOut(200);
		    		}
		    		
		    		--manglu;
		    		++daokehu;
		    		updateDriverStatusNum();
	    		}
	    	}
	    }
	    else if(result.type == "startdrive"){//开始救援 前往目的地
	    	var dm=getMarkerByDriverId(result.driverID,"startdrive");
	    	if(null!=dm){
	    		if(!result.isworkCar){//如果不是工作车
	    			var thisdm=$("#driver_marker_"+result.driverID+"");
		    		$(thisdm.find("div")[0]).removeClass().addClass("em-startdrive");
		    		
		    		if($("#showstartdrive").hasClass("startdrive_active")){
		    			thisdm.fadeIn(200);
		    		}
		    		else{
		    			thisdm.fadeOut(200);
		    		}
		    		
		    		--daokehu;
		    		++startdrive;
		    		updateDriverStatusNum();
	    		}
	    	}
	    }
	    else if(result.type == "zhuandan"){//转单
	    	var dm=null;
	    	if(result.isworkCar){//如果是工作车
	    		dm=getMarkerByDriverId(result.driverID,null);
	    	}
	    	else{
	    		dm=getMarkerByDriverId(result.driverID,"jiedan");
	    	}
	    	if(null!=dm){
	    		$.scojs_message('转单成功', $.scojs_message.TYPE_OK);
				
	    		if(!result.isworkCar){//如果不是工作车
	    			var thisdm=$("#driver_marker_"+result.driverID+"");
		    		$(thisdm.find("div")[0]).removeClass().addClass("em-jiedan");
		    		
		    		if($("#showjiedan").hasClass("jiedan_active")){
		    			thisdm.fadeIn(200);
		    		}
		    		else{
		    			thisdm.fadeOut(200);
		    		}
		    		
		    		//更新数量
					if(result.applyWorkCar=="0"){
						--dengdaijie;
					}
					else if(result.applyWorkCar=="1"){
						--fancheng;
					}
					else if(result.applyWorkCar=="-1"){
						--kongxian;
					}
					
		    		++jiedan;
		    		updateDriverStatusNum();
	    		}
	    	}
	    	
	    	if(result.oldDriverID){
	    		if(!result.oldIsworkCar){//如果不是工作车
		    		var detailStatus=null;
		    		if(result.oldApplyWorkCar==-1){
						detailStatus='kongxian';
					}
		    		if(result.oldApplyWorkCar==0){
						detailStatus='dengdaijie';
					}
					else if(result.oldApplyWorkCar==1){
						detailStatus='fancheng';
					}
			    	
			    	var dm=getMarkerByDriverId(result.oldDriverID,detailStatus);
			    	if(null!=dm){

			    		var thisdm=$("#driver_marker_"+result.oldDriverID+"");
			    		$(thisdm.find("div")[0]).removeClass().addClass("em-"+detailStatus+"");
			    		
			    		if($("#show"+detailStatus+"").hasClass(""+detailStatus+"_active")){
			    			thisdm.fadeIn(200);
			    		}
			    		else{
			    			thisdm.fadeOut(200);
			    		}
			    		
			    		//更新数量
		    			if(result.oldApplyWorkCar==-1){
							++kongxian;
						}
		    			if(result.oldApplyWorkCar==0){
							++dengdaijie;
						}
						else if(result.oldApplyWorkCar==1){
							++fancheng;
						}
			    		
			    		--jiedan;
			    		updateDriverStatusNum();
			    	}
		    	}
	    	}
	    	
	    }
	    else if(result.type == "powerzhuandan"){//中途转单
	    	var dm=null;
	    	if(result.isworkCar){//如果是工作车
	    		dm=getMarkerByDriverId(result.driverID,null);
	    	}
	    	else{
	    		dm=getMarkerByDriverId(result.driverID,"jiedan");
	    	}
	    	if(null!=dm){
	    		$.scojs_message('转单成功', $.scojs_message.TYPE_OK);
				
	    		if(!result.isworkCar){//如果不是工作车
	    			var thisdm=$("#driver_marker_"+result.driverID+"");
		    		$(thisdm.find("div")[0]).removeClass().addClass("em-jiedan");
		    		
		    		if($("#showjiedan").hasClass("jiedan_active")){
		    			thisdm.fadeIn(200);
		    		}
		    		else{
		    			thisdm.fadeOut(200);
		    		}
		    		
		    		//更新数量
					if(result.applyWorkCar=="0"){
						--dengdaijie;
					}
					else if(result.applyWorkCar=="1"){
						--fancheng;
					}
					else if(result.applyWorkCar=="-1"){
						--kongxian;
					}
					
		    		++jiedan;
		    		updateDriverStatusNum();
	    		}
	    	}
	    	
	    	if(result.oldDriverID){
	    		
	    		if(result.oldDriverStatus==2){//接单状态
	    			if(!result.oldIsworkCar){//如果不是工作车
		    			var dm=getMarkerByDriverId(result.oldDriverID,"jiedan");
		    			if(null!=dm){
				    		var thisdm=$("#driver_marker_"+result.oldDriverID+"");
				    		$(thisdm.find("div")[0]).removeClass().addClass("em-jiedan");
				    		
				    		if($("#showjiedan").hasClass("jiedan_active")){
				    			thisdm.fadeIn(200);
				    		}
				    		else{
				    			thisdm.fadeOut(200);
				    		}
				    		//更新数量
							++jiedan;
				    		--manglu;
				    		updateDriverStatusNum();
				    	}
	    			}
	    		}
	    		else if(result.oldDriverStatus==1){//空闲状态
	    			if(!result.oldIsworkCar){//如果不是工作车
			    		var detailStatus=null;
			    		if(result.oldApplyWorkCar==-1){
							detailStatus='kongxian';
						}
			    		if(result.oldApplyWorkCar==0){
							detailStatus='dengdaijie';
						}
						else if(result.oldApplyWorkCar==1){
							detailStatus='fancheng';
						}
				    	
				    	var dm=getMarkerByDriverId(result.oldDriverID,detailStatus);
				    	if(null!=dm){

				    		var thisdm=$("#driver_marker_"+result.oldDriverID+"");
				    		$(thisdm.find("div")[0]).removeClass().addClass("em-"+detailStatus+"");
				    		
				    		if($("#show"+detailStatus+"").hasClass(""+detailStatus+"_active")){
				    			thisdm.fadeIn(200);
				    		}
				    		else{
				    			thisdm.fadeOut(200);
				    		}
				    		
				    		//更新数量
			    			if(result.oldApplyWorkCar==-1){
								++kongxian;
							}
			    			if(result.oldApplyWorkCar==0){
								++dengdaijie;
							}
							else if(result.oldApplyWorkCar==1){
								++fancheng;
							}
				    		
			    			--manglu;
				    		updateDriverStatusNum();
				    	}
			    	}
	    		}
	    		
	    		
	    	}
	    	
	    }
	    else if(result.type == "finish"){//完成
	    	$.scojs_message(result.message, $.scojs_message.TYPE_OK);
	    	try { 
		    	if (window.webkitNotifications.checkPermission() === 0) {
		        	window.webkitNotifications.createNotification(ctx+'/assets/css/images/notice.png', '通知', result.message).show();
		        }
	    	}catch(e){
			}
	    	
	    	var workcarStatus=null;
    		if(result.applyWorkCar==-1){
				workcarStatus='kongxian';
			}
    		else if(result.applyWorkCar==0){
				workcarStatus='dengdaijie';
			}
			else if(result.applyWorkCar==1){
				workcarStatus='fancheng';
			}
	    	
	    	var dm=getMarkerByDriverId(result.driverID,workcarStatus);
	    	if(null!=dm){

	    		if(!result.isworkCar){//如果不是工作车
	    			var thisdm=$("#driver_marker_"+result.driverID+"");
		    		$(thisdm.find("div")[0]).removeClass().addClass("em-"+workcarStatus+"");
		    		
		    		if($("#show"+workcarStatus+"").hasClass(""+workcarStatus+"_active")){
		    			thisdm.fadeIn(200);
		    		}
		    		else{
		    			thisdm.fadeOut(200);
		    		}
		    		
		    		//更新数量
	    			if(result.applyWorkCar==-1){
						++kongxian;
					}
	    			else if(result.applyWorkCar==0){
						++dengdaijie;
					}
					else if(result.applyWorkCar==1){
						++fancheng;
					}
					
	    			if(result.busyStatus==-1){
						--manglu;
					}
	    			if(result.busyStatus==0){
						--daokehu;
					}
					else if(result.busyStatus==1){
						--startdrive;
					}
		    		
		    		updateDriverStatusNum();
	    		}
	    		
	    	}
	    	
	    	//更新坐标
	    	if(null!=result.lng && null!=result.lat){
	    		var point = new BMap.Point(result.lng,result.lat);
	    		dm.setPosition(point);
	    	}
	    }
//	    else if(result.type == "pickup"){//工单完成 如果有请求接 （待接送）
//	    	
//	    }
	    else if(result.type == "gopickup"){//工作车接受（返程）
	    	var dm=getMarkerByDriverId(result.driverID,"fancheng");
	    	if(null!=dm){
	    		var thisdm=$("#driver_marker_"+result.driverID+"");
	    		$(thisdm.find("div")[0]).removeClass().addClass("em-fancheng");
	    		
	    		if($("#showfancheng").hasClass("fancheng_active")){
	    			thisdm.fadeIn(200);
	    		}
	    		else{
	    			thisdm.fadeOut(200);
	    		}
	    		
	    		--dengdaijie;
	    		++fancheng;
	    		updateDriverStatusNum();
	    	}
	    }
	    else if(result.type == "completepickup"){//完成工作车接送
	    	var dm=getMarkerByDriverId(result.driverID,"kongxian");
	    	if(null!=dm){
	    		var thisdm=$("#driver_marker_"+result.driverID+"");
	    		$(thisdm.find("div")[0]).removeClass().addClass("em-kongxian");
	    		
	    		if($("#showkongxian").hasClass("kongxian_active")){
	    			thisdm.fadeIn(200);
	    		}
	    		else{
	    			thisdm.fadeOut(200);
	    		}
	    		
	    		--fancheng;
	    		++kongxian;
	    		updateDriverStatusNum();
	    	}
	    }
	    else if(result.type == "driverPowerOffline"){//强制下线
	    	var dm=getMarkerByDriverId(result.driverID,"lixian");
	    	if(null!=dm){
	    		var thisdm=$("#driver_marker_"+result.driverID+"");
	    		$(thisdm.find("div")[0]).removeClass().addClass("em-lixian");
	    		
	    		if($("#showlixian").hasClass("lixian_active")){
	    			thisdm.fadeIn(200);
	    		}
	    		else{
	    			thisdm.fadeOut(200);
	    		}
	    		
	    		if(result.lastStatus==0){
	    			
	    		}
	    		else if(result.lastStatus==1){
    				if(result.applyWorkCar==-1){
						--kongxian;
					}
    				else if(result.applyWorkCar==0){
						--dengdaijie;
					}
					else if(result.applyWorkCar==1){
						--fancheng;
					}
    				
		    		++lixian;
		    		updateDriverStatusNum();
	    		}
				else if(result.lastStatus==2){
					--jiedan;
		    		++lixian;	   
		    		updateDriverStatusNum();
				}
				else if(result.lastStatus==3){
					if(result.busyStatus==-1){
						--manglu;
					}
					if(result.busyStatus==0){
						--daokehu;
					}
					else if(result.busyStatus==1){
						--startdrive;
					}
    				
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
    	sock.close(); //关闭TCP连接
    	initWebSocket();
    };
};

function initialize(center){
	
	var myGeo = new BMap.Geocoder();
	
	myGeo.getPoint(center, function(point){
		if (point) {
			map = new BMap.Map("allmap");
			map.centerAndZoom(point, 13);
		    map.enableScrollWheelZoom();
		    map.addControl(new BMap.MapTypeControl({mapTypes: [BMAP_NORMAL_MAP,BMAP_HYBRID_MAP]}));
		    
		    map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT, type: BMAP_NAVIGATION_CONTROL_SMALL}));  //右上角，仅包含平移和缩放按钮
		    
		    var ctrl = new BMapLib.TrafficControl({
	           showPanel: false //是否显示路况提示面板
	        });      
	        map.addControl(ctrl);
	        ctrl.setAnchor(BMAP_ANCHOR_TOP_LEFT);  

		       
		    //地图加载完毕
		    map.addEventListener('tilesloaded',function(){
		    	
		    	if(!mapLoadFinish){
		    		
		    		mapLoadFinish = true;
		    		
		    		$.get(ctx+'/order/listpaidan',{},function(drivers){
		    			
		    			
	    		    	$.each(drivers,function(index,driver){
	    		    		addMarker(driver);
	    		    	});
	    		    	updateDriverStatusNum();
		    		});
		    		
		    		initWebSocket();
		    		
		    	}
		    	
		   });  
		   
		}
		else{
			$.scojs_message("地区"+center+"位置不准确，请重新编辑地区", $.scojs_message.TYPE_ERROR);
		}
	});
}

function addMarker(driver){ 

	
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
    
	
    var htm='';
    
    if(!driver.workCar){
		//如果不是工作车
    	if(detailStatus=='kongxian'){
    		htm='<div id="driver_marker_'+driver.id+'" class="driver_marker_class" data-z-index="9" style="position:absolute;z-index:9;width:55px;">'+
				'<div class="em-'+detailStatus+'">'+driver.realname+'</div>'+
		    '</div>';
    	}
    	else{
    		htm='<div id="driver_marker_'+driver.id+'" class="driver_marker_class" data-z-index="99" style="position:absolute;z-index:99;width:55px;display:none;">'+
				'<div class="em-'+detailStatus+'">'+driver.realname+'</div>'+
		    '</div>';
    	}
	}
    else{
    	htm='<div id="driver_marker_'+driver.id+'" class="driver_workcar_marker_class" data-z-index="9998" style="position:absolute;z-index:9998;width:110px;display:none;">'+
	        	'<div class="em-'+detailStatus+'-l"></div>'+
	    		'<div class="em-'+detailStatus+'-con">'+driver.realname+'</div>'+
	            '<div class="em-'+detailStatus+'-r"></div>'+
	        '</div>';
    }
	
    var point = new BMap.Point(driver.longitude, driver.latitude);
    //救援人员标注
    var marker =new BMapLib.RichMarker(htm, point, {"anchor": new BMap.Size(-39, -40), "enableDragging": true});
	marker.driverid=driver.id;
	marker.driverstatus=detailStatus;
	
	map.addOverlay(marker);

//	if(!driver.workCar){
		//如果不是工作车
		var photo=ctx+'/assets/img/default_avatar.jpg';
		if(driver.photo && driver.photo!=''){
			photo=ctx+'/upload/driver/'+driver.photo;
	    }
		var companyName_All=driver.companyName_All;
		if(companyName_All.length>12){
			companyName_All=companyName_All.substr(0,12)+"...";
		}
		
//		var copyButton='<button class="btn btn-info btn-xs copy_phone" type="button">复制</button>';
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
						    '<div class="tcb-btn" style="display:none;"><a href="javascript:;" id="paigeita_'+driver.id+'" onclick="paigeita(this,'+driver.id+');">派单</a></div>'+
						'</div>'+
					'</div>';
		
		
		//救援人员详细
		var infowindow = new BMapLib.RichMarker(content, point, {"anchor": new BMap.Size(-250, -280), "enableDragging": true});
		map.addOverlay(infowindow);
		
		marker.addEventListener("onmouseup", function(e){
			if(e.which==3){
				currmarker=this;
				$(".em-tc-box").fadeOut(0);//隐藏所有面板
				
				infowindow.setPosition(new BMap.Point(map.getCenter().lng,map.getCenter().lat));
				$("#driver_detail_"+driver.id+"").fadeIn(200);//显示当前面板
				
				$(".tcb-btn").hide();//隐藏所有派单按钮
				
				//如果选择了工单 并且救援人员为空闲 显示派单按钮
				var dm=getMarkerByDriverId(driver.id,null);
				if(dm && (dm.driverstatus=="kongxian" || dm.driverstatus=="dengdaijie" || dm.driverstatus=="fancheng" || dm.driverstatus=="workcar") && $(".nr-bt-hover").length!=0){
					$("#paigeita_"+driver.id+"").parent().show();
				}
			}
		}); 
//	}
	
	memberArr.push(marker);
}

function getMarkerByDriverId(driverid,driverstatus){
	if(memberArr==null || memberArr.length==0){
		return null;
	}
	var dm=null;
	$(memberArr).each(function(index,driverMarker){
		if(driverMarker.driverid == driverid){
			if(null!=driverstatus){
				driverMarker.driverstatus=driverstatus;
			}
			dm=driverMarker;
			return false;
		}
	});
	return dm;
}

function updateDriverStatusNum(){
	if(kongxian<0 || jiedan<0 || manglu<0 || daokehu<0 || startdrive<0 || dengdaijie<0 || fancheng<0 || lixian<0 || workcar<0){
		$.get(ctx+'/order/listpaidan',{},function(drivers){
			kongxian=0;//空闲
			jiedan=0;//已派单
			manglu=0;//前往预约地
			daokehu=0;//等待客户
			startdrive=0;//前往目的地
			dengdaijie=0;//等待接
			fancheng=0;//返程
			lixian=0;//未上班
			workcar=0;//工作车
	    	$.each(drivers,function(index,driver){
	    		if(!driver.workCar){
	    			//如果不是工作车
	    			if(driver.status==0){
	    				++lixian;
	    			}
	    			else if(driver.status==1){
	    				if(null!=driver.applyWorkCar){
	    					if(driver.applyWorkCar==0){
	    						++dengdaijie;
	    					}
	    					else if(driver.applyWorkCar==1){
	    						++fancheng;
	    					}
	    				}
	    				else{
	    					++kongxian;
	    				}
	    			}
	    		    else if(driver.status==2){
	    				++jiedan;
	    			}
	    			else if(driver.status==3){
	    				if(null!=driver.busyStatus){
	    		    		if(driver.busyStatus==0){
	    		    			++daokehu;
	    		    		}
	    		    		else if(driver.busyStatus==1){
	    		    			++startdrive;
	    		    		}
	    		    	}
	    				else{
	    					++manglu;
	    				}
	    			}
	    		}
	    		else{
	    			++workcar;
	    		}
	    	});
	    	
	    	$("#kongxianDrivers").html(kongxian);
			$("#jiedanDrivers").html(jiedan);
			$("#mangluDrivers").html(manglu);
			$("#daokehuDrivers").html(daokehu);
			$("#startdriveDrivers").html(startdrive);
			$("#dengdaijieDrivers").html(dengdaijie);
			$("#fanchengDrivers").html(fancheng);
			$("#lixianDrivers").html(lixian);
			
			$("#workcarDrivers").html(workcar);
			
			$("#allDrivers").html(lixian+kongxian+jiedan+manglu+workcar+daokehu+startdrive+dengdaijie+fancheng);
		
		});
	}
	else{
		$("#kongxianDrivers").html(kongxian);
		$("#jiedanDrivers").html(jiedan);
		$("#mangluDrivers").html(manglu);
		$("#daokehuDrivers").html(daokehu);
		$("#startdriveDrivers").html(startdrive);
		$("#dengdaijieDrivers").html(dengdaijie);
		$("#fanchengDrivers").html(fancheng);
		$("#lixianDrivers").html(lixian);
		
		$("#workcarDrivers").html(workcar);
		
		$("#allDrivers").html(lixian+kongxian+jiedan+manglu+workcar+daokehu+startdrive+dengdaijie+fancheng);
	}
}

$(document).ready(function(){
	
	//自动刷新
//	autoRefresh();
	
	//初始化地图
	initialize(window.daijia.center);
	
	var isFullscreen = false;
	var panelHeight = $("#realMap").height();
    var panelWidth = $("#realMap").width();
    var maxWidth = screen.width;
	var maxHeight = document.documentElement.clientHeight-45;
	
	$("#allmap").css("height",maxHeight-140);
    $("#fullscreen").click(function () {
        if (!isFullscreen) {
            $("#realMap").css("position", "absolute").css("background-color", "#f5f5f5").css("top", 0).css("left", 0).css("width", maxWidth).css("height", maxHeight).css("z-index", "10000");
            $("#allmap").css("height",maxHeight);
            $("#newOrderDiv").css("bottom",-45);
            isFullscreen = true;
            $(this).text("退出全屏");
        } else {
            $("#realMap").css("position", "relative").css("width", panelWidth).css("height", panelHeight).css("z-index", "");
            $("#allmap").css("height",560);
            $("#newOrderDiv").css("bottom",0);
            isFullscreen = false;
            $(this).text("全屏显示");
        }
    });
    
    $(document).on('click','.newOrderDivChild',function(){
    	
    	$(".newOrderDivChild .nr-bt-hover").removeClass("nr-bt-hover").addClass("nr-bt");
		$(this).find(".nr-bt").removeClass("nr-bt").addClass("nr-bt-hover");
    	
//    	if($(this).find(".nr-con").css("display")=="none"){
//    		$(".nr-con").hide();
//    		$(this).find(".nr-con").slideDown();
//    		
//    		$(".newOrderDivChild .nr-bt-hover").removeClass("nr-bt-hover").addClass("nr-bt");
//    		$(this).find(".nr-bt").removeClass("nr-bt").addClass("nr-bt-hover");
//    	}
//    	else{
//    		$(this).find(".nr-con").slideUp();
//    		$(this).find(".nr-bt-hover").removeClass("nr-bt-hover").addClass("nr-bt");
//    		
//    		$(".tcb-btn").hide();//隐藏派单按钮
//    	}
    	
    	orderid=$(this).attr("data-value");
    	
    	if(membermarker){
    		membermarker.remove();
    	}
    	
    	var memberPoint=new BMap.Point($(this).attr("data-longitude"), $(this).attr("data-latitude"));
    	
    	var htm = "<div class='em-kh' style='position:absolute;z-index:9999;width:85px;'>"+$(this).attr("data-name")+"</div>";
    	
    	membermarker = new BMapLib.RichMarker(htm, memberPoint, {"anchor": new BMap.Size(-35, -46), "enableDragging": true});
    	map.addOverlay(membermarker);
    	
    	$(".tcb-btn a").html("将工单"+$(this).attr("data-orderNum")+"派给他/她");
    	//$(".tcb-btn").show();//显示派单按钮
    	
    	map.centerAndZoom(memberPoint, 13);
    });
    
//    $("#showAll").click(function(){
//    	initializeColor();
//    	$("#showAll").removeClass("allstatus").addClass("driver-status allstatus_active");
//    	showDriversByStatus(null);
//    });
    $("#showkongxian").click(function(){//空闲
    	if($(this).hasClass("kongxian_active")){
    		hideDriversByStatus($(this).attr("data-value"));
    		$(this).removeClass("kongxian_active").addClass("kongxian");
    	}
    	else{
    		showDriversByStatus($(this).attr("data-value"));
    		$(this).removeClass("kongxian").addClass("kongxian_active");
    	}
    });
    $("#showjiedan").click(function(){//已派单
    	if($(this).hasClass("jiedan_active")){
    		hideDriversByStatus($(this).attr("data-value"));
    		$(this).removeClass("jiedan_active").addClass("jiedan");
    	}
    	else{
    		showDriversByStatus($(this).attr("data-value"));
    		$(this).removeClass("jiedan").addClass("jiedan_active");
    	}
    });
    $("#showmanglu").click(function(){//前往预约地
    	if($(this).hasClass("manglu_active")){
    		hideDriversByStatus($(this).attr("data-value"));
    		$(this).removeClass("manglu_active").addClass("manglu");
    	}
    	else{
    		showDriversByStatus($(this).attr("data-value"));
    		$(this).removeClass("manglu").addClass("manglu_active");
    	}
    });
    $("#showdaokehu").click(function(){//等待客户
    	if($(this).hasClass("daokehu_active")){
    		hideDriversByStatus($(this).attr("data-value"));
    		$(this).removeClass("daokehu_active").addClass("daokehu");
    	}
    	else{
    		showDriversByStatus($(this).attr("data-value"));
    		$(this).removeClass("daokehu").addClass("daokehu_active");
    	}
    });
    $("#showstartdrive").click(function(){//前往目的地
    	if($(this).hasClass("startdrive_active")){
    		hideDriversByStatus($(this).attr("data-value"));
    		$(this).removeClass("startdrive_active").addClass("startdrive");
    	}
    	else{
    		showDriversByStatus($(this).attr("data-value"));
    		$(this).removeClass("startdrive").addClass("startdrive_active");
    	}
    });
    $("#showdengdaijie").click(function(){//等待接
    	if($(this).hasClass("dengdaijie_active")){
    		hideDriversByStatus($(this).attr("data-value"));
    		$(this).removeClass("dengdaijie_active").addClass("dengdaijie");
    	}
    	else{
    		showDriversByStatus($(this).attr("data-value"));
    		$(this).removeClass("dengdaijie").addClass("dengdaijie_active");
    	}
    });
    $("#showfancheng").click(function(){//返程
    	if($(this).hasClass("fancheng_active")){
    		hideDriversByStatus($(this).attr("data-value"));
    		$(this).removeClass("fancheng_active").addClass("fancheng");
    	}
    	else{
    		showDriversByStatus($(this).attr("data-value"));
    		$(this).removeClass("fancheng").addClass("fancheng_active");
    	}
    });
    $("#showlixian").click(function(){//未上班
    	if($(this).hasClass("lixian_active")){
    		hideDriversByStatus($(this).attr("data-value"));
    		$(this).removeClass("lixian_active").addClass("lixian");
    	}
    	else{
    		showDriversByStatus($(this).attr("data-value"));
    		$(this).removeClass("lixian").addClass("lixian_active");
    	}
    });
    $("#showworkcar").click(function(){//工作车
    	if($(this).hasClass("workcar_active")){
    		hideDriversByStatus($(this).attr("data-value"));
    		$(this).removeClass("workcar_active").addClass("workcar");
    	}
    	else{
    		showDriversByStatus($(this).attr("data-value"));
    		$(this).removeClass("workcar").addClass("workcar_active");
    	}
    });
    
    //选择状态
//    $(".check_status").click(function(){
//		if(this.checked){
//			showDriversByStatus($(this).attr("data-value"));
//    	}
//    	else{
//    		hideDriversByStatus($(this).attr("data-value"));
//    	}
//    });
//    
//    $("#dropdown_status").click(function(){
//    	$(this).parent().find(".dropdown-menu").toggle(200);
//    });
    
});

function showDriversByStatus(status){
	if(memberArr==null || memberArr.length==0){
		return;
	}
	if(null!=status){
//		$(".driver_marker_class").hide();
		$(memberArr).each(function(index,driverMarker){
			if(null!=driverMarker.driverid && null!=driverMarker.driverstatus){
				if(driverMarker.driverstatus==status){
					$("#driver_marker_"+driverMarker.driverid+"").css("z-index",1000).fadeIn(200);
				}
				else{
					$("#driver_marker_"+driverMarker.driverid+"").css("z-index",$("#driver_marker_"+driverMarker.driverid+"").attr("data-z-index"));
				}
			}
		});
//		$(".driver_workcar_marker_class").hide();
	}
//	else{
//		$(".driver_marker_class").fadeIn(200);
//		$(".driver_workcar_marker_class").fadeIn(200);
//	}
}

function hideDriversByStatus(status){
	if(memberArr==null || memberArr.length==0){
		return;
	}
	if(null!=status){
//		$(".driver_marker_class").hide();
		$(memberArr).each(function(index,driverMarker){
			if(null!=driverMarker.driverid && null!=driverMarker.driverstatus && driverMarker.driverstatus==status){
				$("#driver_marker_"+driverMarker.driverid+"").fadeOut(200);
			}
		});
//		$(".driver_workcar_marker_class").hide();
	}
//	else{
//		$(".driver_marker_class").fadeIn(200);
//		$(".driver_workcar_marker_class").fadeIn(200);
//	}
}

//function initializeColor(){
//	$("#showAll").removeClass("allstatus_active driver-status").addClass("allstatus");
//	$("#showKongxian").removeClass("kongxian_active driver-status").addClass("kongxian");
//	$("#showJiedan").removeClass("jiedan_active driver-status").addClass("jiedan");
//	$("#showManglu").removeClass("manglu_active driver-status").addClass("manglu");
//	$("#showLixian").removeClass("lixian_active driver-status").addClass("lixian");
//	$("#showWorkCar").removeClass("workcar_active driver-status").addClass("workcar");
//}

