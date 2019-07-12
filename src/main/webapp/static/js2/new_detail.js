 $(function(){
	  $("#save_btn").click(function(){
			  $.post("addProc",$("#detail_frm").serialize(),function(){
				  
			  })
	  })
	  
  })