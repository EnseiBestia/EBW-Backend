var year,months;
var xdData = new Array(12);
var cjData = new Array(12);
var jeData = new Array(12);
	
$(function(){
	
	Highcharts.setOptions({
		lang:{
			printChart:'打印报表',
			downloadJPEG:'保存为JPG图片',
			downloadPDF: '保存为PDF文档',
			downloadPNG: '保存为PNG图片',
			downloadSVG: '保存为SVG文档',
			loading:'加载中...',
			resetZoom:'重置缩放',
			resetZoomTitle:'缩放比例：1:1',
			months:['1月', '2月', '3月', '4月', '5月', '6月','7月', '8月', '9月', '10月', '11月', '12月']
		}
	});
	
	year = $("#year").val();
	
	for(var i=0 ; i<12 ; i++){
		xdData[i] = 0;
		cjData[i] = 0;
		jeData[i] = 12;
	}
	
	
	$.post(window.daijia.ctx+'/chart/dataForYear',{'year':year},function(data){
		
		months = data.months;
		
		if(months){
			for(var i=0 ; i<months.length ; i++){
				var month = months[i];
				xdData[month.month] = month.totalCancelNum;
				cjData[month.month] = month.totalSuccessNum;
				jeData[month.month] = month.totalPrice;
			}
			
			renderYearChart(xdData,cjData,jeData,months);
		}else{
			$.scojs_message('没有工单记录', $.scojs_message.TYPE_OK);
		}
		
	},'json');
	
	$("#year").change(function(){
		$("#submit_form").submit();
	});
	
});

renderYearChart=function(xdData,cjData,jeData,months){

	$("#chart").highcharts({
		chart: {
            renderTo: 'chart',
            zoomType: 'xy'
        },
		plotOptions: {
			series:{
				cursor: 'pointer',
	            events:{
	            	click:function(e){
	            		var category = e.point.category;
	            		//加载月数据 
	            		var year = $("#year").val();
	            		var month = parseInt(category.substring(0,category.length-1))-1;
	            		var days = new Array();
	            		var xdmData = new Array();
	            		var cjmData = new Array();
	            		var jemData = new Array();
	            		
            			var currentMonth = months[month];
            			var days = currentMonth.chartDays;
            			for(var i = 0 ; i < days.length ; i++){
            				var chartDay = days[i];
            				days[i] = chartDay.day;
            				xdmData[i] = chartDay.totalCancelNum;
            				cjmData[i] = chartDay.totalSuccessNum;
            				jemData[i] = chartDay.totalPrice;
            			}
	            		
            			renderMonthChart(year,month,days,xdmData,cjmData,jemData);
	            	}
	            }
			}
        },
        credits:{
        	enabled:false
        },
        title: {
            text: '救援工单统计图'
        },
        subtitle: {
            text: '2014年'
        },
        xAxis: [{
            categories: Highcharts.getOptions().lang.months
        }],
        yAxis: [{ // Primary yAxis
            labels: {
                format: '{value}单',
                style: {
                    color: Highcharts.getOptions().colors[1]
                }
            },
            title: {
                text: '单量',
                style: {
                    color: Highcharts.getOptions().colors[1]
                }
            },
            allowDecimals: false
        }, { // Secondary yAxis
            title: {
                text: '总价',
                style: {
                    color: Highcharts.getOptions().colors[0]
                }
            },
            labels: {
                format: '{value} 元',
                style: {
                    color: Highcharts.getOptions().colors[0]
                }
            },
            opposite: true
        }],
        tooltip: {
            shared: true
        },
        legend: {
            layout: 'vertical',
            align: 'left',
            x: 120,
            verticalAlign: 'top',
            y: 100,
            floating: true,
            backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'
        },
        series: [{
            name: '金额',
            type: 'column',
            yAxis: 1,
            data: jeData,
            tooltip: {
                valueSuffix: '元'
            }

        }, {
            name: '单量',
            type: 'spline',
            data: cjData,
            tooltip: {
                valueSuffix: '单'
            }
        }, {
            name: '已销单',
            type: 'spline',
            data: xdData,
            tooltip: {
                valueSuffix: '个'
            }
        }]
    });
	
};


renderMonthChart=function(year,month,days,xdData,cjData,jeData){
	
	$("#chart").highcharts({
		chart: {
            renderTo:  'chart',
            zoomType: 'xy'
        },
		plotOptions: {
			series:{
				cursor: 'pointer',
	            events:{
	            	click:function(e){
	            		var category = e.point.category;
	            		//加载月数据 
	            		$.post(window.daijia.ctx+'/chart/dataForDay',{'year':year,'month':month,'day':category},function(data){
	            			
	            			var dataHours = data.hours;
	            			var hours = new Array();
	            			
	            			var xddData = new Array();
	            			var cjdData = new Array();
	            			var jedData = new Array();
	            			
	            			for(var i=0 ; i<dataHours.length ; i++){
	            				var hour = dataHours[i];
	            				hours[i] = hour.hour;
	            				xddData[i] = hour.totalCancel;
	            				cjdData[i] = hour.totalSuccess;
	            				jedData[i] = hour.totalPrice;
	            			}
	            			
	            			
	            			renderDayChart(year,month,category,hours,xddData,cjdData,jedData);
	            			
	            		},'json');
	            		
	            	}
	            }
			}
        },
        credits:{
        	enabled:false
        },
        title: {
            text: '救援工单统计图'
        },
        subtitle: {
            text: year+"年-"+(month+1)+"月"
        },
        xAxis: [{
            categories: days
        }],
        yAxis: [{ // Primary yAxis
            labels: {
                format: '{value}单',
                style: {
                    color: Highcharts.getOptions().colors[1]
                }
            },
            title: {
                text: '单量',
                style: {
                    color: Highcharts.getOptions().colors[1]
                }
            },
            allowDecimals: false
        }, { // Secondary yAxis
            title: {
                text: '总价',
                style: {
                    color: Highcharts.getOptions().colors[0]
                }
            },
            labels: {
                format: '{value} 元',
                style: {
                    color: Highcharts.getOptions().colors[0]
                }
            },
            opposite: true
        }],
        tooltip: {
            shared: true
        },
        legend: {
            layout: 'vertical',
            align: 'left',
            x: 120,
            verticalAlign: 'top',
            y: 100,
            floating: true,
            backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'
        },
        series: [{
            name: '金额',
            type: 'column',
            yAxis: 1,
            data: jeData,
            tooltip: {
                valueSuffix: '元'
            }

        }, {
            name: '单量',
            type: 'spline',
            data: cjData,
            tooltip: {
                valueSuffix: '单'
            }
        }, {
            name: '已销单',
            type: 'spline',
            data: xdData,
            tooltip: {
                valueSuffix: '个'
            }
        }]
    });
	
};

renderDayChart=function(year,month,day,hours,xddData,cjdData,jedData){
	
	$("#chart").highcharts({
		chart: {
            renderTo: 'chart',
            zoomType: 'xy'
        },
		plotOptions: {
			series:{
				cursor: 'pointer',
	            events:{
	            	click:function(e){
	            		//TODO 返回年数据统计
	            		renderYearChart(xdData,cjData,jeData,months);
	            	}
	            }
			}
        },
        credits:{
        	enabled:false
        },
        title: {
            text: '救援工单统计图'
        },
        subtitle: {
            text: year+"年-"+(month+1)+"月-"+day+"日"
        },
        xAxis: [{
            categories: hours
        }],
        yAxis: [{ // Primary yAxis
            labels: {
                format: '{value}单',
                style: {
                    color: Highcharts.getOptions().colors[1]
                }
            },
            title: {
                text: '单量',
                style: {
                    color: Highcharts.getOptions().colors[1]
                }
            },
            allowDecimals: false
        }, { // Secondary yAxis
            title: {
                text: '总价',
                style: {
                    color: Highcharts.getOptions().colors[0]
                }
            },
            labels: {
                format: '{value} 元',
                style: {
                    color: Highcharts.getOptions().colors[0]
                }
            },
            opposite: true
        }],
        tooltip: {
            shared: true
        },
        legend: {
            layout: 'vertical',
            align: 'left',
            x: 120,
            verticalAlign: 'top',
            y: 100,
            floating: true,
            backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'
        },
        series: [{
            name: '金额',
            type: 'column',
            yAxis: 1,
            data: jedData,
            tooltip: {
                valueSuffix: '元'
            }

        }, {
            name: '单量',
            type: 'spline',
            data: cjdData,
            tooltip: {
                valueSuffix: '单'
            }
        }, {
            name: '已销单',
            type: 'spline',
            data: xddData,
            tooltip: {
                valueSuffix: '个'
            }
        }]
    });
	
};