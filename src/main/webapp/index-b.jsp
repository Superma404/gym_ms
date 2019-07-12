<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>健身房管理系统 - 后台管理</title>
	<link rel="stylesheet" href="<c:url value='/css/admin.css'></c:url>">
	<link rel="stylesheet" href="<c:url value='/lib/font-awesome/css/font-awesome.css'></c:url>">
</head>
<body>
<div class="header">
	<h1><a href="#">健身房管理系统</a></h1>
	<div class="user">
		<a href="#">admin</a>
		<a href="admin_login.jsp">退出</a>
	</div>
</div>
<div class="main">
	<ul class="left-side">
		<li class="menu-title active">
			<a href="#">
				<i class=" fa fa-users"></i>&nbsp;&nbsp;健身相关
			</a>
		</li>
		<li class="sub-menu">
			<ul>
				<li>
					<a href="/viem/course/main.jsp" target="pageBox">
						<i class=" fa fa-circle-thin"></i>&nbsp;&nbsp;课程管理
					</a>
				</li>
				<li>
					<a href="/viem/type/main.jsp" target="pageBox">
						<i class=" fa fa-circle-thin"></i>&nbsp;&nbsp;类别管理
					</a>
				</li>
				<li>
					<a target="pageBox" href="/viem/coach/main.jsp" >
					<i class=" fa fa-circle-thin"></i>&nbsp;&nbsp;教练管理
					</a>
				</li>
				<li>
					<a target="pageBox" href="/viem/instrument/main.jsp" >
						<i class=" fa fa-circle-thin"></i>&nbsp;&nbsp;器械管理
					</a>
				</li>

			</ul>
		</li>
		<li class="menu-title">
			<a href="#" >
				<i class=" fa fa-file-text"></i>&nbsp;&nbsp;互动相关
			</a>
		</li>
		<li class="sub-menu">
			<ul>
				<li>
					<a target="pageBox" href="/viem/message/main.jsp" >
						<i class=" fa fa-circle-thin"></i>&nbsp;&nbsp;留言管理
					</a>
				</li>
				<li>
					<a target="pageBox" href="/viem/notice/main.jsp" >
					<i class=" fa fa-circle-thin"></i>&nbsp;&nbsp;公告管理
					</a>
				</li>


			</ul>
		</li>
		<li class="menu-title">
			<a href="#"  >
				<i class=" fa fa-sitemap" ></i>&nbsp;&nbsp;管理员
			</a>
		</li>
		<li class="sub-menu">
			<ul class="menu">
				<li>
					<a target="pageBox" href="/viem/admin/main.jsp">
					<i class=" fa fa-circle-thin"></i>&nbsp;&nbsp;角色管理
					</a>
				</li>
				<li>
					<a target="pageBox" href="/viem/user/main.jsp">
					<i class=" fa fa-circle-thin"></i>&nbsp;&nbsp;用户管理
					</a>
				</li>
			</ul>
		</li>
	</ul>
	<div class="right-side">
		<iframe name="pageBox" src="<c:url value='/main.jsp'></c:url>"></iframe>
		<div class="footer">
		    平顶山学院 ©2019 计算计学院 毕业设计
		</div>
	</div>
</div>
<script src="lib/jquery/jquery.js"></script>
<script src="js/admin.js"></script>
</body>
</html>