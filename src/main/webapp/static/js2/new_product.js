  $(function(){
	  
	  $("#save_btn").click(function(){
			  $.post("addProa",$("#product_frm").serialize(),function(){
				  
			  })
	  })
	  
  })
 