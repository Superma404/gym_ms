$(function(){
	update();
})


function update() {
	//为修改添加点击事件
	$("#addNews").click(function(){
		$('#add-news').modal({
			  keyboard: false
			});
	})
	$("#sureaddnews").click(function(){
		$.post("insertNew",$("#news").serialize(),function(){})
		$('#add-news').modal('hide');
		window.location.reload();
	})


}