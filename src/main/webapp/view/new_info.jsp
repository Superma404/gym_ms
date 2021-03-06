<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script type="text/javascript" src="<c:url value='/static/js2/jquery-3.2.1.min.js'/>"></script>
    <link rel="stylesheet" href="<c:url value='/static/css/bootstrap.min.css'/>" type="text/css"/>
    <link href="<c:url value='/static/css/reg.css'/>" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="<c:url value='/static/css/base.css'/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='/static/css/headbott.css'/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='/static/css/index.css'/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='/static/css/ly-list.css'/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='/static/css/reg.css'/>" type="text/css"/>
    <title></title>
    <script type="text/javascript">
    $(function(){
    	$("#save_btn").click(function(){
    		var formData=new FormData($("#info_frm")[0]);
    		alert(formData);
    		$.ajax({
    			    type : "POST",  
			        url : "addProb",  
			        data : formData,
			        async: false,  
			        cache: false,  
			        contentType: false,  
			        processData: false,
			        success : function(msg) {  
			        	alert(msg);
			        }
    		}
    		);
    		
    	});
    })
    	
</script>
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
<div class="product">
    <!--头上表格-->
    <div class="product-table">
        <div class="product-left">
            <table class="table table-bordered">
                <tr class="text-center">
                    <td class="title-td"><a href="proCheck?address=selectPro_a">基本信息</a></td>
                    <td class="active title-td"><a href="proCheck?address=selectPro_b">项目信息</a></td>
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
                <h4>创建你的项目信息</h4>
            </div> 
            <div class="btn-save">
                <input type="button"  class="btn btn-default" id="save_btn"  value="保存草稿"/>
            </div>
        </div>
        <div class="clear"></div>
        <hr>
       
        <!--表单-->
        <form id="info_frm"    method="post" enctype="multipart/form-data">
                <div class="my-form">
                <div class="product-info-input">
                    <b>设置封面：</b>
                    <input type="file" name="proBFile">
                </div>
                 <div class="product-info-input"><b>项目标题：</b><input class="text" type="text" placeholder="给自己的项目起个漂亮的名字吧" name="proBName"></div>
                <div class="product-info-input"><b>筹款目的：</b><div class="text-area"><textarea name="proBGoal" rows="2" placeholder="一句话介绍一下你的项目吧"></textarea></div></div>
                <div class="product-info-select">
                    <div class="product-info-text"><b>项目地点：</b></div>
                    <div class="product-info-select1">
                        <select class="info-select1">
                            <option>请选择</option>
                        </select>
                    </div>
                    <div class="product-info-select2">
                        <select class="info-select2">
                            <option>请选择</option>
                        </select>
                    </div>
                </div>

                <div class="product-info-input"><b>筹资金额：</b><input name="proBMoney" class="text" type="text" placeholder="输入你需要的金额，最少500元">元</div> 
                <div class="product-info-input"><b>筹资天数：</b><input name="proBDatenum" class="text" type="text" placeholder="">天</div> 
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