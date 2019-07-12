<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>新闻发布系统 - 新闻发布</title>
	<script type="text/javascript" src="<c:url value='/js/jquery-3.2.1.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/js/update.js'/>"></script>
	<script type="text/javascript" charset=UTF-8 src="<c:url value='/My97DatePicker/WdatePicker.js'/>"></script>
	<link rel="stylesheet" href="<c:url value='/css/main.css'></c:url>">
	<link rel="stylesheet" href="<c:url value='/lib/font-awesome/css/font-awesome.css'></c:url>">
</head>
<div class="box">
	<h3>公告信息</h3>
	<form  id="notice_update_frm" method="post" enctype="multipart/form-data">
	<input type="hidden" name="nid" value="${notice_detail.nid}"/>
	<table class="form-table">

		<tr>
			<td>公告标题</td>
			<td colspan="3" class="control">
				<input type="text" name="cotitle" value="${notice_detail.ntitle}" >
			</td>
		</tr>
		<tr>
			<td>公告内容</td>
			<td colspan="3" class="control">
			 <textarea  style="width: 500px; height: 150px" rows="3" cols="4" name="cocontent">${notice_detail.ncontent}</textarea>
			</td>
		</tr>
		<tr>
			<td>发布时间</td>
			<td colspan="3" class="control">
				<input type="text" name="ntime" onfocus="WdatePicker()"  class="Wdate"
					   value="<fmt:formatDate value="${notice_detail.ntime}" pattern="yyyy-MM-dd"></fmt:formatDate>">
			</td>
		</tr>
	</table>
	</form>
	<div class="buttons">
		<button id="notice_update_btn" class="btn btn-primary va-bottom">保存</button>&nbsp;&nbsp;
		<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
	</div>

</div>
</body>
</html>