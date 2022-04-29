$(function() {

$("#areaxname").blur(
		function() {
			$("#areaxname_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#areaxname").after("<span id='areaxname_msg' style='color: red'>区域名称不能为空</span>");
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
var areaxname = $("#areaxname").val();
var memo = $("#memo").val();
$("#areaxname_msg").empty();
$("#memo_msg").empty();
if (areaxname == "" || areaxname == null) {
	$("#areaxname").after("<span id='areaxname_msg' style='color: red'>区域名称不能为空</span>");
	return false;
}
if (memo == "" || memo == null) {
	$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#areaxname_msg").empty();
$("#memo_msg").empty();
});

});
