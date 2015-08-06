$(function () {
	initWebSocket();
});
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
		
		if(result.type == "driverOnline"){
			$.scojs_message(result.driverName+"已经上线", $.scojs_message.TYPE_OK);
		}
		else if(result.type == "newOrders"){//添加新工单
	    	document.getElementById('new_order_play').play();//播放声音
		}
		else if(result.type == "paidan"){//派单
	    	if(result.ringing){
    			document.getElementById('new_order_play').play();//播放声音
    		}
	    }
		else if(result.type == "fillorderv2"){//补单
			document.getElementById('new_order_play').play();//播放声音
		}
		else if(result.type == "refuse"){//拒单
			document.getElementById('new_order_play').play();//播放声音
			
			var driverName = result.driverName;
			var orderNumber = result.orderNumber;
			$.scojs_message("救援人员【"+driverName+"】拒绝了工单【"+orderNumber+"】", $.scojs_message.TYPE_ERROR);
		
		}
		else if(result.type == "finish"){
			$.scojs_message(result.message, $.scojs_message.TYPE_OK);
		}
	};
	sock.onclose = function() {
		sock.close(); //关闭TCP连接
		initWebSocket();
    };
    
};

