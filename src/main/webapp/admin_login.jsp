<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <script type="text/javascript" src="/static/admin/js/jquery1.12.4.min.js"></script>
    <link href="/static/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="/static/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="/static/admin/css/style.css" rel="stylesheet" type="text/css">
    <title>Title</title>
</head>
<body>
<div class="container">
    <form class="login-form" action="login_b" method="post">
        <h2 class="text-center">后台管理系统</h2>
        <div class="login-wrap">
            <!-- icon_lock_alt -->
            <p class="login-img"><i class="icon_lock_alt"></i></p>
            <div class="input-group">
                <span class="input-group-addon"><i class="ace-icon fa fa-user"></i></span>
                <input type="text" name="u_name" class="form-control" placeholder="用户名" autofocus required>
            </div>
            <div class="input-group" style="font-size:100px!important;">
                <span class="input-group-addon"><i class="ace-icon fa fa-lock"></i></span>
                <input type="password" name="u_password" class="form-control" placeholder="密码" autofocus required>
                
            </div>
            <span>${msg}</span>
            <label class="checkbox" style="margin-left: 20px">
                <input type="checkbox" value="remember-me">记住我
                <span class="pull-right"> <a href="#">忘记密码?</a></span>
            </label>
            <button class="btn btn-primary btn-lg btn-block" type="submit">登陆</button>
        </div>
    </form>
</div>
</body>

</html>