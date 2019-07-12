<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<title>校信通系统 - 用户管理</title>
	<link rel="stylesheet" href="<c:url value='/css/main.css'></c:url>">
	<link rel="stylesheet" href="<c:url value='/lib/font-awesome/css/font-awesome.css'></c:url>">
</head>
<body>
<div class="box">
	<h3>用户信息</h3>
	<div class="actions">
		<div>
			<a class="btn btn-primary" href="<c:url value='/viem/user/add.jsp'></c:url>">添加用户信息</a>
		</div>
	</div>

	<table class="list">
		<tr>
			<th>用户编号</th>
			<th>用户名</th>
			<th>用户密码</th>
			<th>用户姓名</th>
			<th>用户手机</th>
			<th>用户邮箱</th>
			<th>账号状态</th>
			<th>操作</th>
		</tr>
	<c:forEach items="${user_list.list}" var="u">
		<tr>
			<td>${u.usId}</td>
			<td>${u.usName}</td>
			<td>${u.usPassword}</td>
			<td>${u.usRealname}</td>
			<td>${u.usTel }</td>
			<td>${u.usEml}</td>
			<td>${u.usStatus}</td>
			 
			<td>
				<a class="fa fa-info" title="详情" href="user_detail?usId=${u.usId}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-pencil" title="编辑" href="user_update?usId=${u.usId}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-remove" title="删除" href="user_delete?usId=${u.usId}"></a>
			</td>
		</tr>
	</c:forEach>
	</table>
	<div class="pager-info">
		<div>共有 21 条记录，第 1/7 页 </div>
		<div>
			<ul class="pagination">
				<li class="paginate_button previous disabled }">
				<a href="#">上一页</a>
				</li>
				<li class="paginate_button active"><a href="#">1</a></li>
				<li class="paginate_button next disabled">
				<a href="#">下一页</a>
				</li>
			</ul>
		</div>
	</div>
</div>
<script src="../../lib/jquery/jquery.js"></script>
<script>
function confirmDelete(id){
	if (confirm("确定要删除码？")) {
		alert('发送删除请求，刷新页面（不要异步）');
	}
	return false;
}
</script>
</body>
</html>