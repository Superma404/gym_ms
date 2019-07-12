/**
 * 
 */
$(document).ready(function () {  
    //鼠标移入变红色  
$(".menu ul li a").mouseover(function (){  
    $(this).css("background", "white"); 
    $(this).css("color", "black");
});  

$(".menu ul li a").mouseout(function () {  
    $(this).css("background", "#4070BA");  
    $(this).css("color", "white");
}); 

$(".news ul li a").mouseover(function (){  
    $(this).css("color", "red"); 
    $(this).css("font-size", "18px");
}); 

$(".news ul li a").mouseout(function (){  
    $(this).css("color", "black"); 
    $(this).css("font-size", "17px");
}); 

$(".news1 ul li a").mouseover(function (){  
    $(this).css("color", "red"); 
    $(this).css("font-size", "18px");
}); 

$(".news1 ul li a").mouseout(function (){  
    $(this).css("color", "black"); 
    $(this).css("font-size", "17px");
}); 

$(".more p a").mouseover(function (){  
    $(this).css("color", "red"); 
}); 

$(".more p a").mouseout(function (){  
    $(this).css("color", "black"); 
    }); 
}); 