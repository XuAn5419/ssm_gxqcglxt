$(function() {

$("#carsno").blur(
		function() {
			$("#carsno_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#carsno").after("<span id='carsno_msg' style='color: red'>车牌号不能为空</span>");
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

$("#workdate").blur(
		function() {
			$("#workdate_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#workdate").after("<span id='workdate_msg' style='color: red'>上牌日期不能为空</span>");
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

$("#pailiang").blur(
		function() {
			$("#pailiang_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#pailiang").after("<span id='pailiang_msg' style='color: red'>排量不能为空</span>");
			}
	});

$("#color").blur(
		function() {
			$("#color_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#color").after("<span id='color_msg' style='color: red'>车身颜色不能为空</span>");
			}
	});

$("#image").blur(
		function() {
			$("#image_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#image").after("<span id='image_msg' style='color: red'>照片不能为空</span>");
			}
	});

$("#contents").blur(
		function() {
			$("#contents_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#contents").after("<span id='contents_msg' style='color: red'>车辆详情不能为空</span>");
			}
	});







$('#sub').click(function(){
var carsno = $("#carsno").val();
var cateid = $("#cateid").val();
var workdate = $("#workdate").val();
var youhao = $("#youhao").val();
var pailiang = $("#pailiang").val();
var color = $("#color").val();
var image = $("#image").val();
var contents = $("#contents").val();
$("#carsno_msg").empty();
$("#cateid_msg").empty();
$("#workdate_msg").empty();
$("#youhao_msg").empty();
$("#pailiang_msg").empty();
$("#color_msg").empty();
$("#image_msg").empty();
$("#contents_msg").empty();
if (carsno == "" || carsno == null) {
	$("#carsno").after("<span id='carsno_msg' style='color: red'>车牌号不能为空</span>");
	return false;
}
if (cateid == "" || cateid == null) {
	$("#cateid").after("<span id='cateid_msg' style='color: red'>车辆类型不能为空</span>");
	return false;
}
if (workdate == "" || workdate == null) {
	$("#workdate").after("<span id='workdate_msg' style='color: red'>上牌日期不能为空</span>");
	return false;
}
if (youhao == "" || youhao == null) {
	$("#youhao").after("<span id='youhao_msg' style='color: red'>油耗不能为空</span>");
	return false;
}
if (pailiang == "" || pailiang == null) {
	$("#pailiang").after("<span id='pailiang_msg' style='color: red'>排量不能为空</span>");
	return false;
}
if (color == "" || color == null) {
	$("#color").after("<span id='color_msg' style='color: red'>车身颜色不能为空</span>");
	return false;
}
if (image == "" || image == null) {
	$("#image").after("<span id='image_msg' style='color: red'>照片不能为空</span>");
	return false;
}
if (contents == "" || contents == null) {
	$("#contents").after("<span id='contents_msg' style='color: red'>车辆详情不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#carsno_msg").empty();
$("#cateid_msg").empty();
$("#workdate_msg").empty();
$("#youhao_msg").empty();
$("#pailiang_msg").empty();
$("#color_msg").empty();
$("#image_msg").empty();
$("#contents_msg").empty();
});

});
