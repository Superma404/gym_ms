<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>众筹管理后台</title>
		<link rel="stylesheet" href='<c:url value='static/css/bootstrap.min.css'></c:url>'/>
		<link rel="stylesheet" href='<c:url value='static/css/dashboard.css'></c:url>'/>
	</head>
	<body>
		
		 <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">众筹管理平台</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
        	
          <ul class="nav navbar-nav navbar-right">
          	<li><a href="index.html">首页</a></li>
          	<li><a href="#">欢迎, 张三</a></li>
            <li><a href="#" title="修改个人资料和密码的页面">设置</a></li>
            <li><a href="#" title="退出登录">退出</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
        	<ul class="nav nav-sidebar">
            <li class="active"><a href="index" target="page" id="homePage">首页</a></li>
           </ul>
          <ul class="nav nav-sidebar">
            <li><a href="products" target="page">所有项目</a></li>
            <li><a href="review"  target="page">项目审核</a></li>
            <li><a href="#">项目跟踪</a></li>
            <li><a href="comments" target="page">项目评论</a></li>
            <li><a href="projectstype" target="page">项目分类</a></li>
            <li><a href="#" >项目推荐</a></li>
          </ul>
          <ul class="nav nav-sidebar">
	            <li><a href="selectAllmmq" target="page">注册用户</a></li>
	            <li><a href="selectFundingmmq" target="page">用户资金</a></li>
	            <li><a href="selectLog" target="page">用户日志</a></li>
	            <li><a href="checkInfo"  target="page"> 实名审核</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="selectNew" target="page">新闻管理</a></li>
            <li><a href="selectQuestion" target="page"s>问题管理</a></li>
            <li><a href="#">管理用户</a></li>
            <li><a href="#">管理日志</a></li>
          </ul>
        </div>
        
        
        
        <div>
         <iframe name="page" src="index" width="100%" height="800px"></iframe>
        </div>
        
		<script type="text/javascript" src='<c:url value='static/js/jquery1.12.4.min.js'></c:url>'></script>
		<script type="text/javascript" src='<c:url value='static/js/bootstrap.min.js'></c:url>' ></script>
		<script type="text/javascript" src='<c:url value='static/js/countUp.js'></c:url>' ></script>
		
	</body>
</html>
