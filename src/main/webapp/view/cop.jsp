<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>无标题文档</title>
    <script type="text/javascript" src="<c:url value='/static/js/jquery-1.42.min.js'/>"></script>
<link href="<c:url value='/static/css/base.css'/>" rel="stylesheet" type="text/css">
<link href="<c:url value='/static/css/reg.css'/>" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="<c:url value='/static/css/headbott.css'/>" type="text/css"/>
</head>

<body>

<div id="header">
    <div class="heade-con">
    <div class="logo"><a href=""><img src="<c:url value='/static/images/timg.png'/>"/></a></div>
        <div class="nav posa">
            <ul>
                <li><a class="vcolor" href="getAllCourse">首页</a></li>
                <li><a href="getAllCourse">课程中心</a></li>
                <li><a href="/getAllCoach">教练中心</a></li>
                <li><a href="getAllNotice">公告中心</a></li>
                <li><a href="userinfo.jsp" style="">个人信息</a></li>
            </ul>
        </div>

        <div class="index-login">
        	
         
         <% 
            if(session.getAttribute("user")!=null){
            %>	
            <a href="user_slm.jsp">
               ${user.usName}
                
            </a>
            <a href="login.jsp">
                退出登录
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


<div id="cop">
    <div class="cop-mian">
        <div class="cop_part1">
            <h1 class="title">健身守则</h1>
            <ul class="Newlist">
                <li><a href="#">不准破坏健身房公共设施</a></li>
                <li><a href="#">不准在健身房内打架斗殴</a></li>
                <li><a href="#">健身应量力而行，不得超负荷锻炼</a></li>
                <li><a href="#">认真准守健身房秩序</a></li>
                <li><a href="#">【干货】祝大家都能达到健身效果</a></li>
            </ul>
        </div>
        <div class="cop_part2">
            <h1 class="title">最新公告通知</h1>
            <ul class="Newlist">
                <li><a href="#">下周一将进行器材整修暂停营业二天………………2019-04-03</a></li>
                <li><a href="#">本周末健身房将举行健美大赛欢迎大家报名参加…………2019-04-02</a></li>
                <li><a href="#">招收教练2名大家欢迎推荐………………2019-04-02</a></li>
                <li><a href="#">于本周五将免费送出100张健身日卡…………2019-04-02</a></li>
                <li><a href="#">【干货】至今天起充值会员打五折，欢迎办卡……2019-04-01</a></li>
            </ul>
        </div>

    </div>
</div>
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
