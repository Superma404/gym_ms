<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript"
	src="${APP_PATH}/static/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/static/js/js/course.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link
	href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>

<script type="text/javascript">

</script>
<body>

	<!-- 员工添加 的模态框-->
	<div class="modal fade" id="empAddModel" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel2">添加课程</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label  class="col-sm-2 control-label">课程名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="couName"
									id="empName_add" placeholder="couName" value="">
							</div>
						</div>
						<div class="form-group">
							<label  class="col-sm-2 control-label">课程教练</label>
							<div class="col-sm-10">
								<select class="form-control" name="couCoach"  >
									<option value="张教练">张教练</option>
									<option value="李教练">李教练</option>
									<option value="王教练">王教练</option>
									<option value="孙教练">孙教练</option>
									<option value="马教练">马教练</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label  class="col-sm-2 control-label">课程场地</label>
							<div class="col-sm-10">
								<%--<label class="radio-inline"> <input type="radio"
									name="gender" id="gender1_add" value="M" checked="checked">
									男
								</label> <label class="radio-inline"> <input type="radio"
									name="gender" id="gender2_add" value="F"> 女
								</label>--%>
									<input type="text" class="form-control" name="couAdress"
										   id="" placeholder="couAdress" value="">
							</div>
						</div>


					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="emp_save_btn">保存</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 员工修改 的模态框-->
	<div class="modal fade" id="empUpdateModel" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel1">修改用户信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="frm_update">
						<input type="hidden" name="usId" id="frm_update_hidden" />
						<div class="form-group">
							<label  class="col-sm-2 control-label">用户名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="usName"
									id="usName_update" value="">
							</div>
						</div>

						<div class="form-group">
							<label  class="col-sm-2 control-label">真实姓名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="usRealname"
									id="usRealname_update" value="">
							</div>
						</div>

						<div class="form-group">
							<label  class="col-sm-2 control-label">联系方法</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="usTel"
									   id="usTel_update" value="">
								<%--<label class="radio-inline"> <input type="radio"
									name="gender" id="gender_update1" value="M"> 男
								</label> <label class="radio-inline"> <input type="radio"
									name="gender" id="gender_update" value="F"> 女
								</label>--%>
							</div>
						</div>
						<div class="form-group">
							<label  class="col-sm-2 control-label">用户状态</label>
							<div class="col-sm-4">
								<!--部门提交Id  -->
								<select class="form-control" name="usStatus" id="dept_select_update">
									<option value="0">0</option>
									<option value="1">1</option>
								</select>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="emp_update_btn">确认修改</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 员工查看详细信息 的模态框-->
	<div class="modal fade" id="empCheckModel" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">课程信息</h4>
				</div>
				<div class="modal-body">
					 <table class="table table-bordered" id="tab_check" >
					  <tr align="center">
					      <th class="col-md-4">真实姓名</th>
					      <td id="usRealname_check"></td>
					  </tr>
					  <tr align="center">
					     <th class="col-md-4" >联系方式</th>
					     <td id="usTel_check" name="gender"></td>
					  </tr>
					  <tr align="center">
					      <th class="col-md-4">状态</th>
					      <td id="usStatus_check"></td>
					  </tr>
					 </table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">接受预约</button>
				</div>
			</div>
		</div>
	</div>
 <!-- 主页面 -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1>课程信息</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 col-md-offset-9">
				<button type="button" class="btn btn-warning" id="emp_add_model_btn">
					<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
					新增
				</button>
				<button type="button" class="btn btn-danger" id="emp_del_btn">
					<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
					删除
				</button>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="emps_table">
					<thead>
						<tr class="warning">
							<th><input type="checkbox" id="check_all" /></th>
							<th><h4>课程编号</h4></th>
							<th><h4>课程名</h4></th>
							<th><h4>课程教练</h4></th>
							<th><h4>开始时间</h4></th>
							<th><h4>课程地址</h4></th>
							<th><h4>操作</h4></th>
						</tr>
					</thead>
					<tbody>

					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6" id="page_info_area"></div>
			<div class="col-md-6" id="page_info_nva"></div>
		</div>
	</div>
</body>
</html>
