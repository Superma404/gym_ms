<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
  
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
	<meta charset="UTF-8">
	<script type="text/javascript" src="<c:url value='/static/js/jquery-1.42.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='static/js2/new_product.js'/>"></script>
	<link rel="stylesheet" href="<c:url value='/static/css/bootstrap.min.css'/>" type="text/css"/>
	<link href="<c:url value='/static/css/reg.css'/>" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="<c:url value='/static/css/base.css'/>" type="text/css"/>
	<link rel="stylesheet" href="<c:url value='/static/css/headbott.css'/>" type="text/css"/>
	<link rel="stylesheet" href="<c:url value='/static/css/index.css'/>" type="text/css"/>
	<link rel="stylesheet" href="<c:url value='/static/css/ly-list.css'/>" type="text/css"/>
	<link rel="stylesheet" href="<c:url value='/static/css/reg.css'/>" type="text/css"/>
	<title>基本信息</title>
</head>
<body>
<!--上部导航栏开始-->
<div id="header">
	<div class="heade-con">
		<div class="logo"><a href=""><img src="<c:url value='/static/images/LOGO.png'/>"/></a></div>
		<div class="nav posa">
			<ul>
				<li><a href="getProjects">首页</a></li>
				<li><a href="getAllProjects">公益众筹</a></li>
				<li><a href="question">常见问题</a></li>
				<li><a href="indexCheck?address=ly-list">众筹资讯</a></li>
				<li><a class="vcolor" href="indexCheck?address=selectPro_a" style="">发布项目</a></li>
			</ul>
		</div>
		<div class="search">
			<form action="">
				<input type="text" class="search-txt" value="" placeholder="找项目">
				<input type="submit" class="search-but" value="">
			</form>
		</div>
		<div class="index-login">

		      <% 
            if(session.getAttribute("user")!=null){
            %>	
            <a href="user_slm.jsp">
               ${user.usName}
                
            </a>
            <% }else if(session.getAttribute("userName")!=null){%>
            	
             <a href="user_slm.jsp">
               ${userName}
             </a>
            	
            <% }else{  %>
            <a href="login">登录</a>
            <span style="color: white;">|</span>
            <a href="register">注册</a>
        <%}%>

		</div>
	</div>
</div>
<!--上不导航栏结束-->
<!--中间核心-->
<div class="product">
	<!--头上表格-->
	<div class="product-table">
		<div class="product-left">
			<table class="table table-bordered">
				<tr class="text-center">
					<td class="active title-td"><a href="proCheck?address=selectPro_a">基本信息</a></td>
					<td class="title-td"><a href="proCheck?address=selectPro_b">项目信息</a></td>
					<td class="title-td"><a href="proCheck?address=selectPro_c">详细描述</a></td>
					<td class="title-td"><a href="proCheck?address=selectRepay">回报设置</a></td>
				</tr>
			</table>
		</div>
		<div class="product-right">
			<table class="table table-bordered">
				<tr class="text-center">
					<td class="title-td">预览</td>
				</tr>

			</table>

		</div>
	</div>
	<!--下部foem表单-->
	<div class="product-form">
		<!--上标题-->
		<div class="product-title">
			<div class="my-h4">
				<h4>选择你的身份类型</h4>
			</div>
			<div class="btn-save">
			    <input type="button"  class="btn btn-default" id="save_btn"  value="保存草稿"/>
			</div>

		</div>
		<div class="clear"></div>
		<hr>
		<!--选择机构个人-->
		<div class="choose">
			<table class="table table-bordered">
				<tr class="text-center">
					<td class="choose-td" style="background: #00aced">个人</td>
				</tr>
			</table>
		</div>
		<!--表单-->
		<form id="product_frm" action="addProa" method="post">
		        <input type="hidden" name="proAUsId" value="${user.usId}" />
			<div class="my-form text-center">
               
				<div class="product-input"><input name="usName" class="text" type="text" placeholder="请输入中文姓名，2-20个字符" value="${proa.user.usName }"></div>
				<div class="product-input"><input name="usIdcard" class="text" type="text" placeholder="二代身份证，请输入数字或字母 " value="${proa.user.usIdcard }"></div>
				<div class="product-input"><input name="usPhone" class="text" type="text" placeholder="请输入手机号码" value="${proa.user.usName }"></div>

				<div class="product-input"><input name="proACustName" class="text" type="text" placeholder="客服联系人" value="${proa.proACustName }"></div>
				<div class="product-input"><input name="proACustPhone" class="text" type="text" placeholder="客服咨询电话" value="${proa.proACustPhone }"></div>
			</div>
			<div class="product-select">
				<div class="product-select1">
				<%  %>
					<select class="select1" id="product_selsect1"  name="proACustAddress">
						<option value="请选择">请选择</option>
						<option value="河 南省">河南省</option>
					</select>
				</div>
				<div class="product-select2">
					<select class="select2" id="product_selsect2" name="proACustAddress">
						<option value="请选择" >请选择</option>
						<option value="郑州市<">郑州市</option>
						<option value="开封市">开封市</option>
					</select>
				</div>
			</div>
			<div class="product-select">
				<div class="select-type">
					<select class="select-cla" id="product_selsect3"  name="proAPstId">
						<option value="1" ${proa.proAPstId==1?"selected":""}>公益</option>
						<option value="2" ${proa.proAPstId==2?"selected":""}>农业</option>
						<option value="3" ${proa.proAPstId==3?"selected":""}>娱乐</option>
						<option value="4" ${proa.proAPstId==4?"selected":""}>其他</option>
					</select>
				</div>
			</div>
		</form>
	</div>
</div>
<!--底部开始-->
<div id="bottom">
	<div class="bottom-ggt"><a href=""><img src="<c:url value='/static/images/bottbom_68.jpg'/>" alt=""/></a></div>
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

		<a href=" ">关于淘宝</a>
		<a href=" ">合作伙伴</a>
		<a href=" ">营销中心</a>
		<a href=" ">廉正举报</a>
		<a href=" ">联系客服</a>
		<a href=" ">开放平台</a>
		<a href=" ">诚征英才</a>
		<a href=" ">联系我们</a>
		<a href=" ">网站地图</a>
		<a href=" ">法律声明</a>　　　
		<em>© 2003-2015 Taobao.com 版权所有</em><br>

		<br>
		<span>网络文化经营许可证：<a href=" ">浙网文[2013]0268-027号</a></span>
		<b>|</b>
		<span data-spm-protocol="i">增值电信业务经营许可证：<a href="">浙B2-20080224-1</a></span>
		<b>|</b>
		<span>信息网络传播视听节目许可证：1109364号</span>
		<b>|</b>
		<span>举报电话:0571-81683755</span>
	</div>
</div>
</body>
</html>