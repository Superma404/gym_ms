
$('.menu-title').click(function(){
	$('.menu-title').removeClass('active');
	$(this).addClass('active');
});

$('.sub-menu li').click(function(){
	$('.sub-menu li').removeClass('active');
	$('.sub-menu li .fa-circle').removeClass('fa-circle').addClass('fa-circle-thin');
	$(this).addClass('active');
	$(this).find('i').removeClass('fa-circle-thin').addClass('fa-circle');
})