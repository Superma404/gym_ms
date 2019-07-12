<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
		
		
    <div class="container-fluid">
      <div class="row">
        
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">${model.user.usName }的项目</h1>
		
			<ul class="nav nav-tabs">
		  <li role="presentation" class="active"><a href="products-info?psId=${model.psId }">基本信息</a></li>
		  <li role="presentation"><a href="#" id="pruductsMsg">项目信息</a></li>
		  <li role="presentation"><a href="#" id="productsComentor">项目评论</a></li>
		  <li role="presentation"><a href="#" id="productsPropress">项目进度</a></li>
		  <li role="presentation"><a href="#" id="productsTrack">项目跟踪</a></li>
		</ul>
          <div>
          		<div class="panel panel-default">
				  <div class="panel-heading">
				    <h3 class="panel-title">申请人信息</h3>
				  </div>
				  <div class="panel-body">
				   
				    <table class="table table-bordered" id="tables">
				    	
				    	<input type="hidden" value="${model.psId }"/>
				    	
					  <tr>
					  	<th>申请人</th>
					  	<td>${model.user.usName }</td>
					  </tr>
					  <tr>
					  	<th>申请人身份证</th>
					  	<td>${model.user.usIdcard }</td>
					  </tr>
					  <tr>
					  	<th>申请人地址</th>
					  	<td>${model.user.usAddress }</td>
					  </tr>
					  <tr>
					  	<th>客服联系人</th>
					  	<td>${model.psCustName }</td>
					  </tr>
					  <tr>
					  	<th>客服联系电话</th>
					  	<td>${model.psCustPhone }</td>
					  </tr>
					</table>
				  </div>
				</div>
				
				
          </div>
        </div>
      </div>
    </div>
		
		<script type="text/javascript" src='<c:url value='static/js/jquery1.12.4.min.js'></c:url>'></script>
		<script type="text/javascript" src='<c:url value='static/js/bootstrap.min.js'></c:url>' ></script>
		<script type="text/javascript" src='<c:url value='static/js/countUp.js'></c:url>' ></script>
		<script type="text/javascript" src='<c:url value='static/myjs/products-info.js'></c:url>' ></script>
		<script>
			$(document).ready(function() {
				
			});
		</script>
	</body>
</html>
