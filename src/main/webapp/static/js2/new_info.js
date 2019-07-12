 $(function(){
	  
	  $("#save_btn").click(function(){
		  var formdata = new FormData($("#info_frm")[0]);
			  $.ajax({
				    type : "POST",  
			        url : "addProb",  
			        data : formdata,
			        async: false,  
			        cache: false,  
			        contentType: false,  
			        processData: false,
			        success : function(msg) {  
			             
			        }  
			  })
	  })
	  
  })
  
 