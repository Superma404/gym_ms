 

/**
 * 注册
 */
	$(function(){
		/**
		 * 让后台生手机成验证码
		 */
		$("#code_btn").click(function(){
			$.post("code",{"usTel":$("input[name='usTel']").val()},function(){
				
			},"json")
		}) 
		
	 
	 
		
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
		$("#register_frm input[name='usTel']").blur(
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
					 
					//验证是否存在
						$.post("registerCheckNull", {
							"usTel" : usTel
						}, function(data) {
							if ( data == 2) {
								show_validate_error("#usTel_div", "fail",
										"*该手机号已被注册");
								return false;
							}else {
								show_validate_error("#usTel_div", "success",
								"");
							}
							return true;
						});
				})
				 
	   /**
		 * 验证用户名
		 * @returns
		 */
		$("#register_frm input[name='usName']").blur(
		 function () {
			var usName = $("#register_frm input[name='usName']").val();
			var regName = /^[a-z0-9_-]{3,16}$/;
			//验证用户名非空
			if(usName=""){
				show_validate_error("#usName_div","fail","*用户名不能为空")
				return false;
			}else {
				show_validate_error("usName_div", "success", "");
			};
			//验证用户名格式
		/*	if (!regName.test(usName)) {
				show_validate_error("usName_div", "fail",
						"用户名必须是3-16位的字母或汉字");
				return false;
			} else {
				show_validate_error("usName_div", "success", "");
			};*/
			return true;
		})
	
						
				/**
				 * 验证密码
				 */	
				$("#register_frm input[name='usPassword']").blur(
				function() {
						var usPassword = this.value;
						var regPassword= /^[a-z0-9_-]{6,18}$/;
						//验证密码不能为空
						if(usPassword=""){
							show_validate_error("#usPassword_div","fail","*密码不能为空")
							return false;
						}else{
							show_validate_error("#usPassword_div","success","")
						}
						//验证密码的格式
						/*if(!regPassword.test(usPassword)){
							show_validate_error("usPassword_div", "fail",
							"密码必须是6-18位的字母或数字");
					         return false;
						}*/
						return true;
				})		
		        
				/**
				 * 验证确认密码
				 */
				$("#register_frm input[name='us']").blur(function(){
					if($("#register_frm input[name='usPassword']").val()!=$("#register_frm input[name='us']").val()){
						show_validate_error("#usPassword_div","fail","*两次输入的密码不一致")
						return false;
					}else{
						 show_validate_error("#usPassword_div","success","")
					 }
					return true;
				})
			/**
			 * 验证是否同意协议
			 */	
			/*$("#register_frm input[name='checkbox1']").click(function(){
				   alert("11");
				if($("#register_frm input[name='checkbox']:checked")){
					$("#register_btn").removeClass("disable");
					alert("22");
				}
				if(!$("#register_frm input[name='checkbox']:checked")){
					$("#register_btn").addClass("disabled");
				}
			})*/
		
		//提交注册信息
		 $("#register_btn").click(function(){
			 /*if ($("#error_msg").text()!="") {
					return false;
				}
			 */

			$.post("http://localhost:8080/registerCheck",$("#register_frm").serialize(),function(data){
				  alert(data);
                alert("1");
				  if(data=="Error"){
					  show_validate_error("#usTel_div", "fail", "手机号码或邮箱格式不正确");
				  }else if(data=="codeError"){
					  show_validate_error("#code_btn","fail","验证码输入有误")
				  }else{
					  window.location.href="http://localhost:8080/login";
				  }
				
			},"json")
		}) 
	})
	
	
