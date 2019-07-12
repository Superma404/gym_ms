<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script type="text/javascript" src="<c:url value='/static/js/jquery-1.42.min.js'/>"></script>
    <link rel="stylesheet" href="<c:url value='/static/css/bootstrap.min.css'/>" type="text/css"/>
    <link href="<c:url value='/static/css/reg.css'/>" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="<c:url value='/static/css/base.css'/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='/static/css/headbott.css'/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='/static/css/index.css'/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='/static/css/ly-list.css'/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='/static/css/reg.css'/>" type="text/css"/>
    <title></title>
</head>
<body>
<!--上部导航栏开始-->
<div id="header">
    <div class="heade-con">
        <div class="logo"><a href=""><img src="<c:url value='/static/images/LOGO.png'/>"/></a></div>
        <div class="nav posa">
            <ul>
                <li><a class="vcolor" href="getProjects">首页</a></li>
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
    <form action="getPreview" method="get" >
          <input type="hidden" name="psUsId" value="${user.usId}"/>
         <table class="table" style="width: 500px;margin-left: 600px;" >
               <tr>
                 <td>客服姓名:</td>
                 <td><input type="text" name="psCustName" value="${ pro_a.proACustName}"/></td>
               </tr>
               <tr>
                 <td>客服电话:</td>
                 <td><input type="text" name="psCustPhone" value="${ pro_a.proACustPhone}"/></td>
               </tr>
               <tr>
                 <td>客服地址:</td>
                 <td><input type="text" name="psCustAddress" value="${ pro_a.proACustAddress}"/></td>
               </tr>
               <tr>
                 <td>项目类型:</td>
                 <td><input type="text" name="psPstId" value="${ pro_a.proAPstId}"/></td>
               </tr>
               <tr>
                 <td>文件名称:</td>
                 <td><input type="text" name="psFile" value="${pro_b.proBFile }"/></td>
               </tr>
               <tr>
                 <td>项目标题:</td>
                 <td><input type="text" name="psName" value="${pro_b.proBName }"/></td>
               </tr>
               <tr>
                 <td>筹款目的:</td>
                 <td><input type="text" name="psGoal" value="${pro_b.proBGoal }"/></td>
               </tr>
               <tr>
                 <td>项目地址:</td>
                 <td><input type="text" name="psAddress" value="${pro_b.proBAddress }"/></td>
               </tr>
               <tr>
                 <td>筹资金额:</td>
                 <td><input type="text" name="psMoney" value="${pro_b.proBMoney }"/></td>
               </tr>
               <tr>
                 <td>筹资天数:</td>
                 <td><input type="text" name="psDays" value="${pro_b.proBDatenum }"/></td>
               </tr>
               <tr>
                 <td>宣传视频地址:</td>
                 <td><input type="text" name="psVideo" value="${pro_c.proCVedio }"/></td>
               </tr>
               <tr>
                 <td>项目故事:</td>
                 <td><input type="text" name="psStory" value="${pro_c.proCStory }"/></td>
               </tr>
               <tr>
                 <td>更多支持:</td>
                 <td><input type="text" name="psSupport" value="${pro_c.proCSupport }"/></td>
               </tr>
               <tr>
                 <td>提供回报简述:</td>
                 <td><input type="text" name="psRepay" value="${pro_c.proCRepay }"/></td>
               </tr>
               <tr>
                 <td>关于自己:</td>
                 <td><input type="text" name="psAboutme" value="${pro_c.proCAboutme }"/></td>
               </tr>
         </table>
         <div class="text-center" style="width: 200px;margin-left: 750px;"><button class="btn btn-success btn-lg btn-block">提交审核</button></div><br>
            </div>
    </form>
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