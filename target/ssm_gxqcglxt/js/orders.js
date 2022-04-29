$(function() {

$("#ordercode").blur(
		function() {
			$("#ordercode_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#ordercode").after("<span id='ordercode_msg' style='color: red'>预约单号不能为空</span>");
			}
	});

$("#usersid").blur(
		function() {
			$("#usersid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#usersid").after("<span id='usersid_msg' style='color: red'>用户不能为空</span>");
			}
	});

$("#carsid").blur(
		function() {
			$("#carsid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#carsid").after("<span id='carsid_msg' style='color: red'>车辆不能为空</span>");
			}
	});

$("#addtime").blur(
		function() {
			$("#addtime_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#addtime").after("<span id='addtime_msg' style='color: red'>下单日期不能为空</span>");
			}
	});

$("#thestart").blur(
		function() {
			$("#thestart_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#thestart").after("<span id='thestart_msg' style='color: red'>开始日期不能为空</span>");
			}
	});

$("#theend").blur(
		function() {
			$("#theend_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#theend").after("<span id='theend_msg' style='color: red'>结束日期不能为空</span>");
			}
	});

$("#total").blur(
		function() {
			$("#total_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#total").after("<span id='total_msg' style='color: red'>预计费用不能为空</span>");
			}
	});

$("#status").blur(
		function() {
			$("#status_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#status").after("<span id='status_msg' style='color: red'>状态不能为空</span>");
			}
	});

$("#memo").blur(
		function() {
			$("#memo_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
			}
	});







$('#sub').click(function(){
var ordercode = $("#ordercode").val();
var usersid = $("#usersid").val();
var carsid = $("#carsid").val();
var addtime = $("#addtime").val();
var thestart = $("#thestart").val();
var theend = $("#theend").val();
var total = $("#total").val();
var status = $("#status").val();
var memo = $("#memo").val();
$("#ordercode_msg").empty();
$("#usersid_msg").empty();
$("#carsid_msg").empty();
$("#addtime_msg").empty();
$("#thestart_msg").empty();
$("#theend_msg").empty();
$("#total_msg").empty();
$("#status_msg").empty();
$("#memo_msg").empty();
if (ordercode == "" || ordercode == null) {
	$("#ordercode").after("<span id='ordercode_msg' style='color: red'>预约单号不能为空</span>");
	return false;
}
if (usersid == "" || usersid == null) {
	$("#usersid").after("<span id='usersid_msg' style='color: red'>用户不能为空</span>");
	return false;
}
if (carsid == "" || carsid == null) {
	$("#carsid").after("<span id='carsid_msg' style='color: red'>车辆不能为空</span>");
	return false;
}
if (addtime == "" || addtime == null) {
	$("#addtime").after("<span id='addtime_msg' style='color: red'>下单日期不能为空</span>");
	return false;
}
if (thestart == "" || thestart == null) {
	$("#thestart").after("<span id='thestart_msg' style='color: red'>开始日期不能为空</span>");
	return false;
}
if (theend == "" || theend == null) {
	$("#theend").after("<span id='theend_msg' style='color: red'>结束日期不能为空</span>");
	return false;
}
if (total == "" || total == null) {
	$("#total").after("<span id='total_msg' style='color: red'>预计费用不能为空</span>");
	return false;
}
if (status == "" || status == null) {
	$("#status").after("<span id='status_msg' style='color: red'>状态不能为空</span>");
	return false;
}
if (memo == "" || memo == null) {
	$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#ordercode_msg").empty();
$("#usersid_msg").empty();
$("#carsid_msg").empty();
$("#addtime_msg").empty();
$("#thestart_msg").empty();
$("#theend_msg").empty();
$("#total_msg").empty();
$("#status_msg").empty();
$("#memo_msg").empty();
});

});
