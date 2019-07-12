<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>新闻发布系统 - 新闻发布</title>
	<link rel="stylesheet" href="<c:url value='/css/main.css'></c:url>">
	<link rel="stylesheet" href="<c:url value='/lib/font-awesome/css/font-awesome.css'></c:url>">
</head>
<body>
<div class="box">
	<h3>新闻类型</h3>
	<div class="actions">
		<div>
			<a class="btn btn-primary" href="<c:url value='/viem/type/add.jsp'></c:url>">添加类型</a>
		</div>
	</div>

	<table class="list">
		<tr>
			<th>类型编号</th>
			<th>新闻类型</th>
			<th>操作</th>
		</tr>
	<c:forEach items="${type_list.list}" var="t">
		<tr>
			<td>${t.tid}</td>
			<td>${t.tstyle}</td>
			<td>
				<a class="fa fa-info" title="详情" href="type_detail?tid=${t.tid}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-pencil" title="编辑" href="type_update?tid=${t.tid}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-remove" title="删除" href="type_delete?tid=${t.tid}"></a>
			</td>
		</tr>
	</c:forEach>
	</table>
	<div class="pager-info">
		<div>共有 1 条记录，第 1/1 页 </div>
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