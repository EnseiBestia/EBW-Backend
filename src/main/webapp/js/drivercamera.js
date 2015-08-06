var ctx=window.daijia.ctx;

$(document).ready(function(){

    // canvas 元素将用于抓拍 
    var photoCanvas = document.getElementById("photoCanvas"),photoContext;
    if(photoCanvas){
    	photoContext = photoCanvas.getContext("2d");
    }
    // video 元素，将用于接收并播放摄像头 的数据流 
    var photoVideo = document.getElementById("photoVideo"), 
    videoObj = {"video": true };
    
    var licenseCanvas = document.getElementById("licenseCanvas"),licenseContext;
    if(licenseCanvas){
    	licenseContext = licenseCanvas.getContext("2d");
    }
    // video 元素，将用于接收并播放摄像头 的数据流 
    var licenseVideo = document.getElementById("licenseVideo");
    
    // 一个出错的回调函数，在控制台打印出错信息 
    var errBack = function(error) { 
	    if("object" === typeof window.console){ 
	    } 
    }; 

    // 针对标准的浏览器 
    if(navigator.getUserMedia) { // Standard 
	    navigator.getUserMedia(videoObj, function(stream) { 
	    	
	    	$("#photoSnap").show();
	    	$("#photoVideo").parent().show();
	    	$("#photoImg_div").hide();
	    	
        	photoVideo.src = stream; 
        	photoVideo.play(); 
        	
        	licenseVideo.src = stream; 
        	licenseVideo.play(); 
	    }, errBack); 
    } 
    else if(navigator.webkitGetUserMedia) { // WebKit-prefixed 
    	navigator.webkitGetUserMedia(videoObj, function(stream){ 
    		
    		$("#photoSnap").show();
    		$("#photoVideo").parent().show();
	    	$("#photoImg_div").hide();
    		
        	photoVideo.src = window.webkitURL.createObjectURL(stream); 
        	photoVideo.play(); 
        	
        	licenseVideo.src = window.webkitURL.createObjectURL(stream); 
        	licenseVideo.play(); 
    	}, errBack); 
    } 

    
    /*头像上传*/
    var boundx,boundy,x=0,y=0,width=200,height=200;
    $("#photo_upload_dialog").click(function(){
		$("#dialog_local_photo").modal();
	});
	$('#photolocalsnap').click(function(){
	 	$('#photoFile').click();
	});
	//救援人员头像本地上传
	$(document).on('change','#photoFile',function(){
		if($.trim($(this).val())){
			$("#photolocalsnap").html("上传中...");
			$("#photolocalsnap").attr("disabled",true);
		 	$.ajaxFileUpload({
                url:ctx+'/common/uploadDriverTemp',
                secureuri:false,
                fileElementId:'photoFile',
                dataType: 'json',
                data:{'type':'photo'},
                success: function (result, textStatus) {
                	if(result.success){
                		$("#photolocalsnap").html("本地上传");
            			$("#photolocalsnap").attr("disabled",false);
            			
            			$("#photoImg_div").html('<img id="photoImg" style="max-width:400px;max-height:400px;" src="'+ctx+'/upload/drivertemp/'+result.url+'"/>');
            			
            			$("#photoVideo").parent().hide();
            			$("#photoImg_div").show();
                    	
                    	$("#photoImg_container").html('<img src="'+ctx+'/upload/drivertemp/'+result.url+'"  />');
                    	
                    	$("#photoImg").Jcrop({
                    		'bgFade':true,
                    		'keySupport':false,
                    		'aspectRatio':1,
                    		'onChange': updatePhotoPreview,
                    		'onSelect': updatePhotoPreview
                    	},function(){
                    		var bounds = this.getBounds();
                    		boundx = bounds[0];
                    		boundy = bounds[1];
                    		this.setSelect([0,0,200,200]);
                    	});
                    	
                    	
                	}
                	else{
                		$.scojs_message(result.msg, $.scojs_message.TYPE_ERROR);
                		$("#photolocalsnap").html("本地上传");
            			$("#photolocalsnap").attr("disabled",false);
                	}
                }
            });
		}
	});
	//救援人员头像拍照上传
    $("#photoSnap").click(function(){
    	
    	if($("#photoVideo").is(":hidden")){
    		$("#photoImg_div").hide();
    		$("#photoVideo").parent().show();
    	}
    	else{
    		// 画到画布上 s

    		photoContext.drawImage(photoVideo, 0, 50, 400, 300);
            
    		 var dataURL = photoCanvas.toDataURL("image/jpg");
    	
             var blobBin = atob(dataURL.split(',')[1]);
             var array = [];
             for(var i = 0; i < blobBin.length; i++) {
                 array.push(blobBin.charCodeAt(i));
             }
             var file=new Blob([new Uint8Array(array)], {type: 'image/jpg'});

             var formdata = new FormData();
             formdata.append("pic1", file);

             $("#photoSnap").attr("disabled",true);
             $.ajax({
                url: ctx+'/common/uploadDriverVideoTemp',
                type: "POST",
                data: formdata,
                dataType: 'json',
                processData: false,
                contentType: false,
                success:function(result){
             	   if(result.success){
             		   
             		   	$("#photoImg_div").html('<img id="photoImg" style="max-width:400px;max-height:400px;" src="'+ctx+'/upload/drivertemp/'+result.url+'"/>');
 	                   	
 	                   	$("#photoVideo").parent().hide();
 	                   	$("#photoImg_div").show();
 	                   	$("#photoSnap").attr("disabled",false);
 	                   	
 	                   	$("#photoImg_container").html('<img src="'+ctx+'/upload/drivertemp/'+result.url+'"  />');
 	                   	
 	                   	$("#photoImg").Jcrop({
	                   		'bgFade':true,
	                   		'keySupport':false,
	                   		'aspectRatio':1,
	                   		'onChange': updatePhotoPreview,
	                   		'onSelect': updatePhotoPreview
	                   	},function(){
	                   		var bounds = this.getBounds();
	                   		boundx = bounds[0];
	                   		boundy = bounds[1];
	                   		this.setSelect([0,0,200,200]);
	                   	});
             	   }
                }
             });
            
    	}
    });
	
	function updatePhotoPreview(c){
		if (parseInt(c.w) > 0) {
			var rx = 200 / c.w;
			var ry = 200 / c.h;
			x=c.x;
			y=c.y;
			width=c.w;
			height=c.h;
			
			$("#photoImg_container img").css({
				width: Math.round(rx * boundx) + 'px',
				height: Math.round(ry * boundy) + 'px',
				marginLeft: '-' + Math.round(rx * c.x) + 'px',
				marginTop: '-' + Math.round(ry * c.y) + 'px'
			});
		}
	};
	
	$("#photo_ok").click(function(){
		if($("#photoImg").attr("src")){
			$("#photo_ok").attr("disabled",true);
			$.post(ctx+'/common/photoScale',{'type':'driver','url':$("#photoImg").attr("src"),'x':x,'y':y,'width':width,'height':height},function(result){
				result=$.trim(result);
				$("#show_photo").attr("src",ctx+"/upload/driver/"+result);
	        	$("#photo").val(result);
	        	$("#photo_ok").attr("disabled",false);
	        	$("#photoImg_div").html('');
	        	$("#photoImg_container").html('');
	        	$("#dialog_local_photo").modal("hide");
	        });
		}
		else{
			alert("请上传救援人员照片");
		}
	});
	/*头像上传*/
	
	
	/*驾驶证上传*/
    var boundx2,boundy2,x2=0,y2=0,width2=550,height2=200;
    $("#license_upload_dialog").click(function(){
		$("#dialog_local_license").modal();
	});
	$('#licenselocalsnap').click(function(){
	 	$('#licenseFile').click();
	});
	//救援人员驾驶证本地上传
	$(document).on('change','#licenseFile',function(){
		if($.trim($(this).val())){
			$("#licenselocalsnap").html("上传中...");
			$("#licenselocalsnap").attr("disabled",true);
		 	$.ajaxFileUpload({
                url:ctx+'/common/uploadLicense',
                secureuri:false,
                fileElementId:'licenseFile',
                dataType: 'json',
                data:{'type':'license'},
                success: function (result, textStatus) {
                	$("#licenselocalsnap").html("本地上传");
        			$("#licenselocalsnap").attr("disabled",false);
                	if(result.success){
            			$("#licenseImg_div").html('<img id="licenseImg" style="max-width:870px;max-height:390px;" src="'+ctx+'/upload/license/'+result.url+'" data-value="'+result.url+'"/>');
                	}
                	else{
                		$.scojs_message(result.msg, $.scojs_message.TYPE_ERROR);
                	}
        			
                	//$("#show_license").attr("src",ctx+"/upload/license/"+result);
    	        	//$("#license").val(result);
//    	        	$("#license_ok").attr("disabled",false);
    	        	//$("#licenseImg_div").html('');
    	        	//$("#licenseImg_container").html('');
    	        	//$("#dialog_local_license").modal("hide");
//                	if(result.success){
//                		$("#licenselocalsnap").html("本地上传");
//            			$("#licenselocalsnap").attr("disabled",false);
//            			
//            			$("#licenseImg_div").html('<img id="licenseImg" style="max-width:400px;max-height:400px;" src="'+ctx+'/upload/drivertemp/'+result.url+'"/>');
//            			
//            			$("#licenseVideo").parent().hide();
//            			$("#licenseImg_div").show();
//                    	
//                    	$("#licenseImg_container").html('<img src="'+ctx+'/upload/drivertemp/'+result.url+'"  />');
//                    	
//                    	$("#licenseImg").Jcrop({
//                    		'bgFade':true,
//                    		'keySupport':false,
//                    		'aspectRatio':2.75,
//                    		'onChange': updateLicensePreview,
//                    		'onSelect': updateLicensePreview
//                    	},function(){
//                    		var bounds = this.getBounds();
//                    		boundx2 = bounds[0];
//                    		boundy2 = bounds[1];
//                    		this.setSelect([0,0,412,150]);
//                    	});
//                	}
//                	else{
//                		$.scojs_message(result.msg, $.scojs_message.TYPE_ERROR);
//                		$("#licenselocalsnap").html("本地上传");
//            			$("#licenselocalsnap").attr("disabled",false);
//                	}
                }
            });
		}
	});
	//救援人员驾驶证拍照上传
    $("#licenseSnap").click(function(){
    	
    	if($("#licenseVideo").is(":hidden")){
    		$("#licenseImg_div").hide();
    		$("#licenseVideo").parent().show();
    	}
    	else{
    		// 画到画布上 s

    		licenseContext.drawImage(licenseVideo, 0, 50, 400, 300);
            
    		 var dataURL = licenseCanvas.toDataURL("image/jpg");
    	
             var blobBin = atob(dataURL.split(',')[1]);
             var array = [];
             for(var i = 0; i < blobBin.length; i++) {
                 array.push(blobBin.charCodeAt(i));
             }
             var file=new Blob([new Uint8Array(array)], {type: 'image/jpg'});

             var formdata = new FormData();
             formdata.append("pic1", file);

             $("#licenseSnap").attr("disabled",true);
             $.ajax({
                url: ctx+'/common/uploadLicenseVideo',
                type: "POST",
                data: formdata,
                dataType: 'json',
                processData: false,
                contentType: false,
                success:function(result){
                	
                	if(result.success){
            			$("#licenseImg_div").html('<img id="licenseImg" style="max-width:870px;max-height:390px;" src="'+ctx+'/upload/license/'+result.url+'" data-value="'+result.url+'"/>');
            			$("#licenseVideo").parent().hide();
 	                   	$("#licenseImg_div").show();
 	                   	$("#licenseSnap").attr("disabled",false);
                	}
                	
//             	   if(result.success){
             		   
//             		   	$("#licenseImg_div").html('<img id="licenseImg" style="max-width:400px;max-height:400px;" src="'+ctx+'/upload/drivertemp/'+result.url+'"/>');
// 	                   	
// 	                   	$("#licenseVideo").parent().hide();
// 	                   	$("#licenseImg_div").show();
// 	                   	$("#licenseSnap").attr("disabled",false);
// 	                   	
// 	                   	$("#licenseImg_container").html('<img src="'+ctx+'/upload/drivertemp/'+result.url+'"  />');
// 	                   	
// 	                   	$("#licenseImg").Jcrop({
//	                   		'bgFade':true,
//	                   		'keySupport':false,
//	                   		'aspectRatio':2.75,
//	                   		'onChange': updateLicensePreview,
//	                   		'onSelect': updateLicensePreview
//	                   	},function(){
//	                   		var bounds = this.getBounds();
//	                   		boundx2 = bounds[0];
//	                   		boundy2 = bounds[1];
//	                   		this.setSelect([0,0,412,150]);
//	                   	});
//             	   }
                }
             });
            
    	}
    });
	
	function updateLicensePreview(c){
		if (parseInt(c.w) > 0) {
			var rx = 412 / c.w;
			var ry = 150 / c.h;
			x2=c.x;
			y2=c.y;
			width2=c.w;
			height2=c.h;
			
			$("#licenseImg_container img").css({
				width: Math.round(rx * boundx2) + 'px',
				height: Math.round(ry * boundy2) + 'px',
				marginLeft: '-' + Math.round(rx * c.x) + 'px',
				marginTop: '-' + Math.round(ry * c.y) + 'px'
			});
		}
	};
	
	$("#license_ok").click(function(){
		if($("#licenseImg").attr("src")){
			$("#show_license").attr("src",$("#licenseImg").attr("src"));
        	$("#license").val($("#licenseImg").attr("data-value"));
        	$("#licenseImg_div").html('');
        	$("#licenseImg_container").html('');
        	$("#dialog_local_license").modal("hide");
//			$("#license_ok").attr("disabled",true);
//			$.post(ctx+'/common/photoScale',{'type':'license','url':$("#licenseImg").attr("src"),'x':x2,'y':y2,'width':parseInt(width2),'height':parseInt(height2)},function(result){
//				result=$.trim(result);
//				$("#show_license").attr("src",ctx+"/upload/license/"+result);
//	        	$("#license").val(result);
//	        	$("#license_ok").attr("disabled",false);
//	        	$("#licenseImg_div").html('');
//	        	$("#licenseImg_container").html('');
//	        	$("#dialog_local_license").modal("hide");
//	        });
		}
		else{
			alert("请上传救援人员驾驶证");
		}
	});
	/*驾驶证上传*/
	
	/*全身照上传*/
    var boundx3,boundy3,x3=0,y3=0,width2=500,height2=800;
    $("#bigPhoto_upload_dialog").click(function(){
		$("#dialog_local_bigPhoto").modal();
	});
	$('#bigPhotolocalsnap').click(function(){
	 	$('#bigPhotoFile').click();
	});
	//救援人员全身照本地上传
	$(document).on('change','#bigPhotoFile',function(){
		if($.trim($(this).val())){
			$("#bigPhotolocalsnap").html("上传中...");
			$("#bigPhotolocalsnap").attr("disabled",true);
		 	$.ajaxFileUpload({
                url:ctx+'/common/uploadDriverTemp',
                secureuri:false,
                fileElementId:'bigPhotoFile',
                dataType: 'json',
                data:{'type':'bigphoto'},
                success: function (result, textStatus) {
                	if(result.success){
                		$("#bigPhotolocalsnap").html("本地上传");
            			$("#bigPhotolocalsnap").attr("disabled",false);
            			
            			$("#bigPhotoImg_div").html('<img id="bigPhotoImg" style="max-width:600px;max-height:600px;" src="'+ctx+'/upload/drivertemp/'+result.url+'"/>');
            			
            			$("#bigPhotoVideo").parent().hide();
            			$("#bigPhotoImg_div").show();
                    	
                    	$("#bigPhotoImg_container").html('<img src="'+ctx+'/upload/drivertemp/'+result.url+'"  />');
                    	
                    	$("#bigPhotoImg").Jcrop({
                    		'bgFade':true,
                    		'keySupport':false,
                    		'aspectRatio':0.625,
                    		'onChange': updateBigPhotoPreview,
                    		'onSelect': updateBigPhotoPreview
                    	},function(){
                    		var bounds = this.getBounds();
                    		boundx3 = bounds[0];
                    		boundy3 = bounds[1];
                    		this.setSelect([0,0,125,200]);
                    	});
                	}
                	else{
                		$.scojs_message(result.msg, $.scojs_message.TYPE_ERROR);
                		$("#bigPhotolocalsnap").html("本地上传");
            			$("#bigPhotolocalsnap").attr("disabled",false);
                	}
                }
            });
		}
	});
	//救援人员全身照拍照上传
    $("#bigPhotoSnap").click(function(){
    	
    	if($("#bigPhotoVideo").is(":hidden")){
    		$("#bigPhotoImg_div").hide();
    		$("#bigPhotoVideo").parent().show();
    	}
    	else{
    		// 画到画布上 s

    		bigPhotoContext.drawImage(bigPhotoVideo, 0, 75, 600, 450);
            
    		 var dataURL = bigPhotoCanvas.toDataURL("image/jpg");
    	
             var blobBin = atob(dataURL.split(',')[1]);
             var array = [];
             for(var i = 0; i < blobBin.length; i++) {
                 array.push(blobBin.charCodeAt(i));
             }
             var file=new Blob([new Uint8Array(array)], {type: 'image/jpg'});

             var formdata = new FormData();
             formdata.append("pic1", file);

             $("#licenseSnap").attr("disabled",true);
             $.ajax({
                url: ctx+'/common/uploadDriverVideoTemp',
                type: "POST",
                data: formdata,
                dataType: 'json',
                processData: false,
                contentType: false,
                success:function(result){
             	   if(result.success){
             		   
             		   	$("#bigPhotoImg_div").html('<img id="bigPhotoImg" style="max-width:600px;max-height:600px;" src="'+ctx+'/upload/drivertemp/'+result.url+'"/>');
 	                   	
 	                   	$("#bigPhotoVideo").parent().hide();
 	                   	$("#bigPhotoImg_div").show();
 	                   	$("#bigPhotoSnap").attr("disabled",false);
 	                   	
 	                   	$("#bigPhotoImg_container").html('<img src="'+ctx+'/upload/drivertemp/'+result.url+'"  />');
 	                   	
 	                   	$("#bigPhotoImg").Jcrop({
	                   		'bgFade':true,
	                   		'keySupport':false,
	                   		'aspectRatio':0.625,
	                   		'onChange': updateBigPhotoPreview,
	                   		'onSelect': updateBigPhotoPreview
	                   	},function(){
	                   		var bounds = this.getBounds();
	                   		boundx3 = bounds[0];
	                   		boundy3 = bounds[1];
	                   		this.setSelect([0,0,125,200]);
	                   	});
             	   }
                }
             });
            
    	}
    });
	
	function updateBigPhotoPreview(c){
		if (parseInt(c.w) > 0) {
			var rx = 125 / c.w;
			var ry = 200 / c.h;
			x3=c.x;
			y3=c.y;
			width3=c.w;
			height3=c.h;
			
			$("#bigPhotoImg_container img").css({
				width: Math.round(rx * boundx3) + 'px',
				height: Math.round(ry * boundy3) + 'px',
				marginLeft: '-' + Math.round(rx * c.x) + 'px',
				marginTop: '-' + Math.round(ry * c.y) + 'px'
			});
		}
	};
	
	$("#bigPhoto_ok").click(function(){
		if($("#bigPhotoImg").attr("src")){
			$("#bigPhoto_ok").attr("disabled",true);
			$.post(ctx+'/common/photoScale',{'type':'driverbigphoto','url':$("#bigPhotoImg").attr("src"),'x':x3,'y':y3,'width':parseInt(width3),'height':parseInt(height3)},function(result){
				result=$.trim(result);
				$("#show_bigPhoto").attr("src",ctx+"/upload/driverbigphoto/"+result);
	        	$("#bigPhoto").val(result);
	        	$("#bigPhoto_ok").attr("disabled",false);
	        	$("#bigPhotoImg_div").html('');
	        	$("#bigPhotoImg_container").html('');
	        	$("#dialog_local_bigPhoto").modal("hide");
	        });
		}
		else{
			alert("请上传救援人员全身照");
		}
	});
	/*全身照上传*/
	

	
	//头像删除
	$("#delete_photo").click(function(){
		if(confirm("确定要删除该救援人员头像吗？"))
		{
			$.post(ctx+'/common/deleteDriverPhoto',{'url':$("#show_photo").attr("src")},function(result){
				$("#show_photo_div").html('<img id="show_photo" width="200" height="200" />');
				$("#photo").val("");
	        });
		}
	});
	
	//驾驶照删除
	$("#delete_license").click(function(){
		if(confirm("确定要删除该救援人员驾驶证吗？"))
		{
			$.post(ctx+'/common/deleteDriverPhoto',{'url':$("#show_license").attr("src")},function(result){
				$("#show_license_div").html('<img id="show_license" width="550" height="200" />');
				$("#license").val("");
	        });
		}
	});
	
	//救援人员全身照删除
	$("#delete_bigPhoto").click(function(){
		if(confirm("确定要删除该救援人员全身照吗？"))
		{
			$.post(ctx+'/common/deleteDriverPhoto',{'url':$("#show_bigPhoto").attr("src")},function(result){
				$("#show_bigPhoto_div").html('<img id="show_bigPhoto" width="125" height="200" />');
				$("#bigPhoto").val("");
	        });
		}
	});
    
});

