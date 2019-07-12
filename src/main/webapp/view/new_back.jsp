<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    
    <script type="text/javascript" src="<c:url value='/static/js/jquery-1.42.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/static/js2/new_back.js'/>"></script>
    <link rel="stylesheet" href="<c:url value='/static/css/bootstrap.min.css'/>" type="text/css"/>
    <link href="<c:url value='/static/css/reg.css'/>" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="<c:url value='/static/css/base.css'/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='/static/css/headbott.css'/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='/static/css/index.css'/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='/static/css/ly-list.css'/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='/static/css/reg.css'/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='/static/css/back.css'/>" type="text/css"/>
    <title>回报设置</title>
</head>
<body>
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
<!--中间-->
<div class="product">
    <!--头上表格-->
    <div class="product-table">
        <div class="product-left">
            <table class="table table-bordered">
                <tr class="text-center">
                    <td class="title-td"><a href="proCheck?address=selectPro_a">基本信息</a></td>
                    <td class="title-td"><a href="proCheck?address=selectPro_b">项目信息</a></td>
                    <td class="title-td"><a href="proCheck?address=selectPro_c">详细描述</a></td>
                    <td class="active title-td"><a href="proCheck?address=selectRepay">回报设置</a></td>
                </tr>
            </table>
        </div>
        <div class="product-right">
            <table class="table table-bordered">
                <tr class="text-center">
                    <td class="title-td"><a href="preview">预览</a></td>
                </tr>
            </table>

        </div>
    </div>
    <!--下部foem表单-->
    <div class="product-form">
        <!--上标题-->
        <div class="product-title">
            <div class="my-h4">
                <h4>设置你的回报信息</h4>
            </div>
            <div class="btn-save">
                <input type="button"  class="btn btn-default" id="save_btn"  value="保存草稿"/>
            </div>

        </div>
        <div class="clear"></div>
        <hr>
        <!--描述项目-->
        <div class="product-title">
            <div class="my-h4">
                <h4><b>回报1</b></h4>
            </div>
        </div>
        <div class="clear"></div>
        <hr>
        <!--编辑信息表单-->
        <form id="back_frm" action="addRepay" method="post">
        <input type="hidden" name="ryUsId" value="${user.usId}" />
            <div class="my-form">
                <div class="back">
                    <b>回报类型：</b>
                    <label class="radio-inline">
                        <input type="radio" name="ryType" id="optionsRadios3" value="1" checked> <b>实物回报(回报需邮寄)</b>
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="ryType" id="optionsRadios4"  value="2"> <b>虚拟回报(回报无需邮寄)</b>
                    </label>
                </div>
                <div class="back"><b>支持金额：</b><input class="input-mon" placeholder="输入需要用户支持的金额">元</div>
                <div class="back"><b>具体规则：</b>每 <input class="input-per" placeholder="此项必填"> 支持者抽出1名中奖者</div>
                <div class="back"><b>回报内容：</b><div><textarea rows="2" placeholder="一句话介绍一下你的项目吧"></textarea></div></div>
                <div class="back"><b>人数上限：</b><input class="input-num" placeholder="0">个<small>"0"为不需要名额</small></div>
                <div class="back"><b>回报时间：</b><input class="input-num" placeholder="0">天<small>"0"为开奖后立即发送</small></div>
                <div class="clear"></div>
                <hr>
                <div class="text-center"><button class="btn btn-primary">删除</button> <button class="btn">保存</button></div><br>
            </div>
        </form>
        <div class="text-center"><a  href="#">+继续添加新的回报</a></div>
    </div>
     

</div>
<!--下部-->
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