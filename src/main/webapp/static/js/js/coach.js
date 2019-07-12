	var totalRecord;//全局变量总记录数
	var currentNum;//全局变量当前页面数

	$(function() {
		to_page(1);
	});
	//页面显示
	function to_page(pn) {
		$.post("http://localhost:8080/coachs", {
			"pn" : pn
		}, function(data) {
			build_emps_table(data);
			build_emps_area(data);
			page_info_nva(data);
		}, "json");

	};

	/**
	 * 创建表格
	 * 
	 */
	function build_emps_table(data) {
		//清空表格
		$("#emps_table tbody").empty();
		var emps = data.list;
		$.each(
						emps,
						function(index, item) {
							var checkBoxTd = $("<th><input type='checkbox' class='check_item' value='"+item.coId+"'/></th>");
							var empIdTd = $("<th></th>").append(item.coId);
							var empNameTd = $("<th></th>").append(item.coName);
							var genderTd = $("<th></th>").append(item.coCourse/* == 'M' ? "男" : "女"*/);
							var emailTd = $("<th></th>").append(item.coStatus);
							//var deptNameTd = $("<th></th>").append(item.couAddress);
							var editBtn = $("<button></button>").addClass("btn btn-info btn-sm")
							                                    .append($("<span></span>")
							                                    .addClass("glyphicon glyphicon-list-alt"))
									                            .append(" ")
									                            .append("预约接受")
									                            .attr("id","check_emp_btn")
									                            .attr("eid",item.coId)
									                            //.attr("did",item.dId);
							    editBtn.attr("myid", item.coId);

							var checkBtn = $("<button></button>").addClass("btn btn-success btn-sm")
							                                     .append($("<span></span>")
							                                     .addClass("glyphicon glyphicon-pencil"))
									                             .append(" ")
									                             .append("编辑")
									                             .attr("id","edit_emp_btn")
									                             .attr("eid",item.coId);

							var btn = $("<th></th>").append(checkBtn)
							                        .append(" ")
							                        .append(editBtn)
							          $("<tr></tr>").append(checkBoxTd)
							                        .append(empIdTd)
									                .append(empNameTd)
									                .append(genderTd)
									                .append(emailTd)
									              //  .append(deptNameTd)
									                .append(btn)
									                .appendTo("#emps_table tbody")
						});
	}
	/**
	 * 创建记录条
	 *
	 */
	function build_emps_area(data) {
		$("#page_info_area").empty();
		totalRecord = data.total;
		currentNum = data.pageNum;
		$("#page_info_area").append("当前是第" + data.pageNum + "页, 总共" + data.pages + "页, 总共"+ data.total + "条记录");
	}

	/**
	 *  创建分页条
	 *  
	 */
	function page_info_nva(data) {
		$("#page_info_nva").empty();
		var ul = $("<ul><ul>").addClass("pagination");
		var firstPageLi = $("<li></li>").append($("<a></a>")
				                        .append("首页")
				                        .attr("href", "#"));
		var prePageLi = $("<li></li>").append($("<a></a>")
				                      .append("&laquo;"));
		if (data.hasPreviousPage == false) {
			 firstPageLi.addClass("disabled");
			 prePageLi.addClass("disabled");
		} else {
			firstPageLi.click(function() {
				to_page(1);
			})
			prePageLi.click(function() {
				to_page(data.pageNum - 1);
			})
		}
		var prePageRe = $("<li></li>").append($("<a></a>")
				                      .append("&raquo;"));
		var lastPageRe = $("<li></li>").append($("<a></a>")
				                       .append("尾页")
				                       .attr("href", "#"));
		if (data.hasNextPage == false) {
			prePageRe.addClass("disabled");
			lastPageRe.addClass("disabled");
		} else {
			prePageRe.click(function() {
				to_page(data.pageNum + 1);
			})
			lastPageRe.click(function() {
				to_page(data.pages);
			})
		}
		ul.append(firstPageLi).append(prePageLi);
		$.each(data.navigatepageNums, function(index, item) {
			var numLi = $("<li></li>").append($("<a></a>")
					                  .append(item));
			if (data.pageNum == item) {
				numLi.addClass("active");
			}
			numLi.click(function() {
				to_page(item);
			})
			ul.append(numLi);
		});
		ul.append(prePageRe)
		  .append(lastPageRe);
		var navEle = $("<nav></nav>").append(ul);
		navEle.appendTo("#page_info_nva");
	}

	/**
	 *  添加员工
	 *  
	 */
	$(function() {
		//添加
		$("#emp_add_model_btn").click(
				function() {
					/*$("#empName_add").parent().parent().removeClass("has-success has-feedback");
					$("#empName_add").parent().parent().removeClass("has-error has-feedback");
					$("#empName_add~span").remove();
					$("#email_add").parent().parent().removeClass("has-success has-feedback");
					$("#email_add").parent().parent().removeClass("has-error has-feedback");
					$("#email_add~span").remove();*/
					$("#empAddModel form")[0].reset();
					$("#empAddModel").modal({
						backdrop : "static"
					});
				});

		/*//添加验证
		function validate_add_form() {
			if (validate_add_form_name() && validate_add_form_email()) {
				return true;
			} else {
				return false;
			}
		}
		//验证用户名
		function validate_add_form_name() {
			var empName = $("#empName_add").val();
			var regName = /(^[a-z0-9_-]{3,16}$)|(^[\u2E80-\u9FFF]{2,5})/;
			if (!regName.test(empName)) {
				show_validate_add_form("#empName_add", "fail",
						"用户名必须是3-16位的字母或汉字");
				return false;
			} else {
				show_validate_add_form("#empName_add", "success", "");
			};
			return true;
		}
		//验证邮箱
		function validate_add_form_email() {
			var email = $("#email_add").val();
			//var regemail = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
            var regemail = /^[1][3,4,5,7,8][0-9]{9}$/;
			if (!regemail.test(email)) {
				show_validate_add_form("#email_add", "fail", "手机格式不正确");
				return false;
			} else {
				show_validate_add_form("#email_add", "success", "")
			}
			;
			return true;
		}
		//验证抽取的方法
		function show_validate_add_form(ele, status, msg) {
			$(ele).parent().parent().removeClass("has-error has-feedback");
			$(ele + "~span").remove();

			if ("success" == status) {
				$(ele).parent().parent().addClass("has-success has-feedback");
				var spanEle2 = $("<span></span>").addClass(
						"glyphicon glyphicon-ok form-control-feedback");
				$(ele).parent().append(spanEle2);
			} else {
				$(ele).parent().parent().addClass("has-error has-feedback");
				var spanEle1 = $("<span></span>").addClass(
						"glyphicon glyphicon-remove form-control-feedback");
				var spanElee1 = $("<span></span>").attr("style", "color:red")
						.text(msg);
				$(ele).parent().append(spanEle1).append(spanElee1);
			}
		}

		//验证用户名是否存在
		$("#empName_add").change(
				function() {
					$("#empName_add").parent().parent().removeClass(
							"has-error has-feedback");
					$("#empName_add~span").remove();
					var usName = this.value;
					$.post("http://localhost:8080/userByName", {
						"usName" : usName
					}, function(data) {
						if (data == 0) {
							show_validate_add_form("#empName_add", "fail",
									"用户名已存在");
							$("#emp_save_btn").attr("ajax-va", "error");
						} else {
							$("#emp_save_btn").attr("ajax-va", "success");
						}
					});

				})

		//查处部门信息显示在下拉列表中
		/!*function getDept() {
			$("#dept_select").empty();
			$.post("depts", function(data) {
				$.each(data, function(index, item) {
					var optionEle = $("<option></option>")
							.append(this.deptName).attr("value", this.deptId);
					optionEle.appendTo("#dept_select");
				})

			}, "json");
		}*!/*/

		//确认添加(提交添加表单)
		$("#emp_save_btn").click(
				function() {
					 

					//将模态框内的表单信息提交给服务器保存
					$.post("http://localhost:8080/coachAdd", $("#empAddModel form").serialize(),
							function(data) {
						          //后台验证
								  if(data.state==100){
									  $('#empAddModel').modal('hide');
									  to_page(9999);
								  }

							})
				});
	});
	/**
	 *  批量删除记录
	 */

	$(function() {

		var array = new Array();
		$("#check_all").click(function() {
			$(".check_item").prop("checked", this.checked);
		})
		$(document)
				.on(
						"click",
						".check_item",
						function() {
							var flag = $(".check_item:checked").length == $(".check_item").length;
							$("#check_all").prop("checked", flag);
						})

		//确认删除
		$("#emp_del_btn").click(function() {

			$.each($(".check_item:checked"), function(index, item) {
				array.push(item.value);
			})
			$.ajax({
				type : 'POST',
				url : 'http://localhost:8080/coachsDel',
				contentType : "application/json; charset=utf-8",
				data : JSON.stringify(array),
				dataType : 'json',
				success : function(data) {
					to_page(currentNum);
				}
			});
		});
	})
	/**
	 * 修改记录
	 *  
	 */
	$(function() {
		$(document).on(
				"click",
				"#edit_emp_btn",
				function() {
					$("#empUpdateModel").modal({
						backdrop : "static"
					});
					$.post("http://localhost:8080/userByusId", {
						"usId" : $(this).attr("eid")
					}, function(data) {
						$("#usName_update").val(data.usName);
						$("#usRealname_update").val(data.usRealname);
						$("#usTel_update").val(data.usTel);
						/*$("#frm_update input[name='gender']").val(
								[ data.Emp.gender ]);*/
						/*$("#usStatus_update").empty();
                        $.each(data.Dept, function(index, item) {
                            $("<option></option>").attr("value", item.deptId)
                                .append(item.deptName).appendTo(
                                $("#dept_select_update"));
                        })
						$("#dept_select_update").val([ data.Emp.dId ]);*/
						$("#frm_update_hidden").attr("value", data.usId);

					}, "json");

					//确认修改(提交修改表单)
					$("#emp_update_btn").click(
							function() {
								$.post("http://localhost:8080/userUpdate", $("#frm_update")
										.serialize(), function() {
									$('#empUpdateModel').modal('hide');
									to_page(currentNum);
								}, "json");
							})

				})
	})
	/**
	 * 查看员工信息
	 * 
	 */
	$(function(){
		$(document).on(
				"click",
				"#check_emp_btn",
				function() {
					$("#tab_check td").html("");
					$("#empCheckModel").modal({
						backdrop : "static"
					});
					$.post("http://localhost:8080/userByusId", {
						"usId" : $(this).attr("eid")
					}, function(data) {
						$("#usName_check").append(data.usName);
						$("#usRealname_check").append(data.usRealname);
						$("#usTel_check").append(data.usTel);
						/*$("#tab_check td[name='gender']").append(
								[ data.gender ]=="M"? "男" : "女");*/

						$("#usStatus_check").append(data.usStatus);
					}, "json");
	          })
	})
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	