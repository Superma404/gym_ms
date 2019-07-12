 $(function(){
	  $("#save_btn").click(function(){
			  $.post("addRepay",$("#back_frm").serialize(),function(){
				  
			  })
	  })
	  
  })