<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>新闻发布系统 - 新闻发布</title>
	<link rel="stylesheet" href="<c:url value='/css/main.css'></c:url>">
	<link rel="stylesheet" href="<c:url value='/lib/font-awesome/css/font-awesome.css'></c:url>">
</head>
<body>
<div class="box">
	<h3>教练信息列表</h3>
	<div class="actions">
		<div>
			<a class="btn btn-primary" href="<c:url value='/viem/coach/add.jsp'></c:url>">添加教练信息</a>
		</div>
	</div>

	<table class="list">
		<tr>
			<th>教练编号</th>
			<th>教练名</th>
			<th>所教课程</th>
			<th>教练状态</th>
			<th>操作</th>
		</tr>
	<c:forEach items="${coach_list.list }" var="c">
		<tr>
			<td>${c.coId}</td>
			<td>${c.coName}</td>
			<td>${c.coCourse}</td>
			<td>${c.coStatus}</td>
			<td>
				<a class="fa fa-info" title="详情" href="coach_detail?coId=${c.coId}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-pencil" title="编辑" href="coach_detail?coId=${c.coId}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-remove" title="删除" href="coach_detail?coId=${c.coId}"></a>
			</td>
		</tr>
	</c:forEach>
	</table>
	<div class="pager-info">
		<div>共有 15 条记录，第 1/3 页 </div>
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