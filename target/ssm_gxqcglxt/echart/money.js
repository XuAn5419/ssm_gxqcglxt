$(window).load(function() {
	var loc = $("input[name='basepath']").val();
	var url = loc + "chart/line.action";
	$.ajax({
		type : "get",
		url : url,
		dataType : "json",
		success : function(json) {
			var days = json.days.replace("[", "").replace("]", "").split(",");
			var total = json.total.replace("[", "").replace("]", "").split(",");
			var pay = json.pay.replace("[", "").replace("]", "").split(",");
			var option = {
				title : {
					text : '营收汇总统计',
					left : 'center'
				},
				tooltip : {
					trigger : 'item',
					formatter : '{a} <br/>{b} : {c}'
				},
				legend : {
					left : 'left'
				},
				xAxis : {
					type : 'category',
					name : 'x',
					splitLine : {
						show : false
					},
					data : days
				},
				grid : {
					left : '3%',
					right : '4%',
					bottom : '3%',
					containLabel : true
				},
				yAxis : {
					type : 'value'
				},
				series : [ {
					name : '订单收入',
					type : 'bar',
					data : total
				},{
					name : '充值金额',
					type : 'bar',
					data : pay
				} ]
			};
			// 初始化echarts实例
			var myChart = echarts.init(document.getElementById('chartmain'));
			// 使用制定的配置项和数据显示图表
			myChart.setOption(option);
		},
		error : function() {
			alert("ajax请求发生错误3");
		}
	});
})

