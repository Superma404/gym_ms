<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>无标题文档</title>
<script type="text/javascript"
	src="<c:url value='/static/js/jquery-1.42.min.js'/>"></script>
	<script type="text/javascript"
	src="<c:url value='/static/js2/register.js'/>"></script>
<link href="<c:url value='/static/css/bootstrap.min.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/static/css/font-awesome.min.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/static/css/base.css'/>" rel="stylesheet"
	type="text/css">
<link href="<c:url value='/static/css/reg.css'/>" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="<c:url value='/static/css/headbott.css'/>"
	type="text/css" />
<link rel="stylesheet" href="<c:url value='/static/css/ace.min.css'/>"
	type="text/css" />
</head>

<body>
	<div id="header">
		<div class="heade-con">
			<div class="logo">
				<a href=""><img src="<c:url value='/static/images/timg.png'/>" /></a>
			</div>
			<div class="nav posa">
				<ul>
					<li><a class="vcolor" href="getAllCourse">首页</a></li>
					<li><a href="getAllCourse">课程中心</a></li>
					<li><a href="/getAllCoach">教练中心</a></li>
					<li><a href="getAllNotice">公告中心</a></li>
					<li><a href="userinfo.jsp" style="">个人信息</a></li>
				</ul>
			</div>
			<div class="search">
				<form action="">
					<input type="text" class="search-txt" value="找项目"> <input
						type="submit" class="search-but" value="">
				</form>
			</div>
			<div class="index-login">
				<a href="login">登录</a> <a class="index-login1" href="register">注册</a>
			</div>
		</div>
	</div>
	<div class="login-container">

		<div class="space-6"></div>

		<div class="position-relative">
			<div id="signup-box" class="signup-box widget-box no-border">
				<div class="widget-body">
					<div class="widget-main">
						<h4 class="header green lighter bigger">
							<i class="ace-icon fa fa-users blue"></i> 用户注册
						</h4>

						<div class="space-6"></div>
						<p id="error_msg" style="color:red" ></p>

						<form id="register_frm">
							<fieldset>
							<div id="usTel_div">
								<label class="block clearfix"> <span
									class="block input-icon input-icon-left"> <input
										type="text" name="usTel" class="form-control"
										placeholder="手机号码" /> <i class="ace-icon fa fa-envelope"></i>
								</span>
								</label>
							</div>
							<div id="usName_div">
								 <label class="block clearfix"> <span
									class="block input-icon input-icon-left"> <input
										type="text" name="usName" class="form-control"
										placeholder="用户名" /> <i class="ace-icon fa fa-user"></i>
								</span>
								</label></div><div id="usPassword_div" > <label class="block clearfix"> <span
									class="block input-icon input-icon-left"> <input
										type="password" name="usPassword" class="form-control"
										placeholder="密码" /> <i class="ace-icon fa fa-lock"></i>
								</span>
								</label> </div> <div ><label class="block clearfix"> <span
									class="block input-icon input-icon-left"> <input
										type="password" name="us" class="form-control"
										placeholder="确认密码" /> <i class="ace-icon fa fa-retweet"></i>
								</span>
								</label></div>
								<!--验证码-->
								<div ><label class="block clearfix"> <span> <input
										type="text" name="usEml" class="" placeholder="验证码" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input class="btn btn-default" type="button" id="code_btn" value="点击获取验证码">
								</span>
								</label></div> <label class="block"> <input type="checkbox" name="checkbox1"
									class="ace" /> <span class="lbl"> 接受 <a href="#">用户协议</a>
								</span>
								</label>

								<div class="space-24"></div>

								<div class="clearfix">
									<button type="reset" class="width-30 pull-left btn btn-sm">
										<i class="ace-icon fa fa-refresh"></i> <span
											class="bigger-110">重置</span>
									</button>

									<button type="button"  
										class="width-65 pull-right btn btn-sm btn-success"
										id="register_btn">
										<span class="bigger-110">注册</span> <i
											class="ace-icon fa fa-arrow-right icon-on-right"></i>
									</button>
								</div>
							</fieldset>
						</form>
						<!--第三方-->
						<div class="social-or-login center">
							<span class="bigger-110">第三方登录</span>
						</div>

						<div class="space-6"></div>

						<div class="social-login center">
							<a href="#"> <img
								src="<c:url value='/static/images/weixin.png'/>">
							</a> <a href="#"> <img
								src="<c:url value='/static/images/qq.png'/>">
							</a> <a href="#"> <img
								src="<c:url value='/static/images/sina.png'/>">
							</a>
						</div>
					</div>

					<div class="toolbar center">
						<a href="login" data-target="#login-box"
							class="back-to-login-link"> <i
							class="ace-icon fa fa-arrow-left"></i> 返回登录
						</a>
					</div>
				</div>
				<!-- /.widget-body -->
			</div>
		</div>
	</div>
	</div>
	<div id="bottom">
		<div class="bottom-ggt">
			<a href=""><img
				src="<c:url value='/static/images/bottbom_68.jpg'/>" alt="" /></a>
		</div>
		<div class="zc-yqlink">
			<ul>
				<li><a href="">阿里巴巴集团</a></li>
				<li><a href="">淘宝网</a></li>
				<li><a href="">天猫</a></li>
				<li><a href="">聚划算</a></li>
				<li><a href="">全球速卖通</a></li>
				<li><a href="">阿里巴巴国际交易市场</a></li>
				<li><a href="">1688</a></li>
				<li><a href="">阿里妈妈</a></li>
				<li><a href="">阿里旅行</a></li>
				<li><a href="">阿里云计算</a></li>
				<li><a href="">阿里巴巴集团</a></li>
				<li><a href="">淘宝网</a></li>
				<li><a href="">天猫</a></li>
				<li><a href="">聚划算</a></li>
				<li><a href="">全球速卖通</a></li>
				<li><a href="">阿里巴巴国际交易市场</a></li>
				<li><a href="">1688</a></li>
				<li><a href="">阿里妈妈</a></li>
				<li><a href="">阿里云计算</a></li>
			</ul>
		</div>
		<div class="footer-bd">

			<a href=" ">关于淘宝</a> <a href=" ">合作伙伴</a> <a href=" ">营销中心</a> <a
				href=" ">廉正举报</a> <a href=" ">联系客服</a> <a href=" ">开放平台</a> <a
				href=" ">诚征英才</a> <a href=" ">联系我们</a> <a href=" ">网站地图</a> <a
				href=" ">法律声明</a> <em>© 2003-2015 Taobao.com 版权所有</em><br> <br>
			<span>网络文化经营许可证：<a href=" ">浙网文[2013]0268-027号</a></span> <b>|</b> <span
				data-spm-protocol="i">增值电信业务经营许可证：<a href="">浙B2-20080224-1</a></span>
			<b>|</b> <span>信息网络传播视听节目许可证：1109364号</span> <b>|</b> <span>举报电话:0571-81683755</span>
		</div>
	</div>
</body>
</html>
