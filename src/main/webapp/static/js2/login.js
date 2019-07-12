$(function(){

	/**
	 * 验证抽取的方法
	 * @param elc
	 * @param status
	 * @param msg
	 * @returns
	 */
	function show_validate_error(elc,status,msg){
		$("#error_msg").text("");
		$(elc).removeClass();
		if("success" == status){
			$(elc).addClass("has-success");
		}else{
			$("#error_msg").append(msg);
			$(elc).addClass("has-error");
		}
	}

	/**
	 * 验证邮箱或手机号
	 */
	$("#frm_login input[name='usTel']").blur(
			function() {
				//验证非空
				var usTel = this.value;
				if(usTel == ""){
					show_validate_error("#usTel_div","fail","*邮箱或手机号不能为空")
					return false;
				}
				 
				//验证格式
				var regemail = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
				var regphone = /(^(\d{3,4}-)?\d{6,8}$)|(^(\d{3,4}-)?\d{6,8}(-\d{1,5})?$)|(\d{11})/
				if (!(regemail.test(usTel)||regphone.test(usTel))) {
					show_validate_error("#usTel_div", "fail", "手机号码或邮箱格式不正确");
					return false;
				} else {
					show_validate_error("#usTel_div", "success", "")
				};
				
				$.post("registerCheckNull", {
					"usTel" : usTel
				}, function(data) {
					if ( data == 2) {
						 
					} else if(data == 3) {
						 
					}else {
						show_validate_error("#usTel_div", "fail",
						"*该账号未注册");
					}
					return true;
				});
		})
	$("#login_btn").click(function(){
		   $.ajax
		$.post("loginCheck",$("#frm_login").serialize(),function(data){
			  alert(data.msg);
			 if(data.msg=="*passwordError"){
				 show_validate_error("#usTel_div", "fail",
						 "*密码错误");
			 }else if(data.msg=="*emailError"){
				 show_validate_error("#usTel_div", "fail",
						 "*账号格式错误");
			 }else{
				 window.location.href="http://localhost:8080/getAllCourse";
			 }
		},"json")
	})
});