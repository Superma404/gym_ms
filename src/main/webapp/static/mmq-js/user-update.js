$(function(){
	update();
})

function update() {
	//为修改添加点击事件
	$("input[name='update']").click(function(){
		$('#updateuser').modal({
			  keyboard: false
			});
		$.post("selectOne",{"id":this.getAttribute("mm")},function(msg){
			$("#id").prop("value", msg.usId);
			$("#name").prop("value", msg.usName);
			$("#email").prop("value", msg.usEmail);
			$("#money").prop("value", msg.usMoney);
			$("#card").prop("value", msg.usIdcard);
			$("#phone").prop("value", msg.usPhone);
			$("#address").prop("value", msg.usAddress);
			$("#code").prop("value", msg.usCode);
			$("#password").prop("value", msg.usPassword);
			$("#sex").prop("value", msg.usSex);
			$("#role").prop("value",msg.usRole);
		})
	})
	
	//为模态框设置点击事件
	$("#sure").click(function(){
		$.post("update",$("#form").serialize())
		$('#updateuser').modal('hide')
	})
}


