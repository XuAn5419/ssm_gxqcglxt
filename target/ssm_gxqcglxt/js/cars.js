$(function() {

$("#carsno").blur(
		function() {
			$("#carsno_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#carsno").after("<span id='carsno_msg' style='color: red'>车牌号不能为空</span>");
			}
	});

$("#image").blur(
		function() {
			$("#image_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#image").after("<span id='image_msg' style='color: red'>图片不能为空</span>");
			}
	});

$("#price").blur(
		function() {
			$("#price_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#price").after("<span id='price_msg' style='color: red'>出租价格不能为空</span>");
			}
	});

$("#cateid").blur(
		function() {
			$("#cateid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#cateid").after("<span id='cateid_msg' style='color: red'>车辆类型不能为空</span>");
			}
	});

$("#areaxid").blur(
		function() {
			$("#areaxid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#areaxid").after("<span id='areaxid_msg' style='color: red'>所在区域不能为空</span>");
			}
	});

$("#shopsid").blur(
		function() {
			$("#shopsid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#shopsid").after("<span id='shopsid_msg' style='color: red'>所属网点不能为空</span>");
			}
	});

$("#color").blur(
		function() {
			$("#color_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#color").after("<span id='color_msg' style='color: red'>车辆颜色不能为空</span>");
			}
	});

$("#workdate").blur(
		function() {
			$("#workdate_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#workdate").after("<span id='workdate_msg' style='color: red'>上牌日期不能为空</span>");
			}
	});

$("#pailiang").blur(
		function() {
			$("#pailiang_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#pailiang").after("<span id='pailiang_msg' style='color: red'>排量不能为空</span>");
			}
	});

$("#youhao").blur(
		function() {
			$("#youhao_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#youhao").after("<span id='youhao_msg' style='color: red'>油耗不能为空</span>");
			}
	});

$("#contents").blur(
		function() {
			$("#contents_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#contents").after("<span id='contents_msg' style='color: red'>车辆介绍不能为空</span>");
			}
	});







$('#sub').click(function(){
var carsno = $("#carsno").val();
var image = $("#image").val();
var price = $("#price").val();
var cateid = $("#cateid").val();
var areaxid = $("#areaxid").val();
var shopsid = $("#shopsid").val();
var color = $("#color").val();
var workdate = $("#workdate").val();
var pailiang = $("#pailiang").val();
var youhao = $("#youhao").val();
var contents = $("#contents").val();
$("#carsno_msg").empty();
$("#image_msg").empty();
$("#price_msg").empty();
$("#cateid_msg").empty();
$("#areaxid_msg").empty();
$("#shopsid_msg").empty();
$("#color_msg").empty();
$("#workdate_msg").empty();
$("#pailiang_msg").empty();
$("#youhao_msg").empty();
$("#contents_msg").empty();
if (carsno == "" || carsno == null) {
	$("#carsno").after("<span id='carsno_msg' style='color: red'>车牌号不能为空</span>");
	return false;
}
if (image == "" || image == null) {
	$("#image").after("<span id='image_msg' style='color: red'>图片不能为空</span>");
	return false;
}
if (price == "" || price == null) {
	$("#price").after("<span id='price_msg' style='color: red'>出租价格不能为空</span>");
	return false;
}
if (cateid == "" || cateid == null) {
	$("#cateid").after("<span id='cateid_msg' style='color: red'>车辆类型不能为空</span>");
	return false;
}
if (areaxid == "" || areaxid == null) {
	$("#areaxid").after("<span id='areaxid_msg' style='color: red'>所在区域不能为空</span>");
	return false;
}
if (shopsid == "" || shopsid == null) {
	$("#shopsid").after("<span id='shopsid_msg' style='color: red'>所属网点不能为空</span>");
	return false;
}
if (color == "" || color == null) {
	$("#color").after("<span id='color_msg' style='color: red'>车辆颜色不能为空</span>");
	return false;
}
if (workdate == "" || workdate == null) {
	$("#workdate").after("<span id='workdate_msg' style='color: red'>上牌日期不能为空</span>");
	return false;
}
if (pailiang == "" || pailiang == null) {
	$("#pailiang").after("<span id='pailiang_msg' style='color: red'>排量不能为空</span>");
	return false;
}
if (youhao == "" || youhao == null) {
	$("#youhao").after("<span id='youhao_msg' style='color: red'>油耗不能为空</span>");
	return false;
}
if (contents == "" || contents == null) {
	$("#contents").after("<span id='contents_msg' style='color: red'>车辆介绍不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#carsno_msg").empty();
$("#image_msg").empty();
$("#price_msg").empty();
$("#cateid_msg").empty();
$("#areaxid_msg").empty();
$("#shopsid_msg").empty();
$("#color_msg").empty();
$("#workdate_msg").empty();
$("#pailiang_msg").empty();
$("#youhao_msg").empty();
$("#contents_msg").empty();
});

});
