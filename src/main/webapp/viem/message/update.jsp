<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>资讯发布系统 - 资讯发布</title>
	<script type="text/javascript" src="<c:url value='/js/jquery-3.2.1.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/js/update.js'/>"></script>
	<script type="text/javascript" charset=UTF-8 src="<c:url value='/My97DatePicker/WdatePicker.js'/>"></script>
	<link rel="stylesheet" href="<c:url value='/css/main.css'></c:url>">
	<link rel="stylesheet" href="<c:url value='/lib/font-awesome/css/font-awesome.css'></c:url>">
</head>
<div class="box">
	<h3>修改资讯信息</h3>
	<form  id="message_update_frm" method="post" enctype="multipart/form-data">
		<input type="hidden" name="mid" value="${message_detail.mid}"/>
	<table class="form-table">
	
		<tr>
			<td>资讯标题</td>
			<td colspan="3" class="control">
				<input type="text" name="mtitle" value="${message_detail.mtitle}">
			</td>
		</tr>
		<tr>
			<td>资讯内容</td>
			<td colspan="3" class="control">
				<textarea style="width: 600px;height: 200px" name="cocontent" > ${message_detail.mcontent} </textarea>
			</td>
		</tr>
		<tr>
			<td>内容图片</td>
			<td colspan="3" class="control">
				<img   src="http://localhost:8080/image/${message_detail.mimg}" width="55px" height="55px">
				<input type="file" name="file" value="" >
			</td>
		</tr>
		<tr>
			<td>作者</td>
			<td colspan="3" class="control">
				<input type="text" name="mauthor" value="${message_detail.mauthor}" >
			</td>
		</tr>
		<tr>
			<td>发布时间</td>
			<td colspan="3" class="control">
				<input type="text" name="mtime"  onfocus="WdatePicker()" class="Wdate"
				value="<fmt:formatDate value="${message_detail.mtime}" pattern="yyyy-MM-dd"></fmt:formatDate>" >
			</td>
		</tr>
		<tr>
			<td>点击量</td>
			<td colspan="3" class="control">
				<input type="text" name="mhits" value="${message_detail.mhits}" >
			</td>
		</tr>
	 
		
	</table>

	</form>
	<div class="buttons">
		<button id="message_update_btn" class="btn btn-primary va-bottom">保存</button>&nbsp;&nbsp;
		<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
	</div>
</div>
</body>
</html>