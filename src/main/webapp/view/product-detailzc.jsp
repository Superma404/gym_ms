<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="Keywords" content="关键词,关键词">
    <meta name="description" content="">
    <title></title>
    <script type="text/javascript" src="<c:url value='/static/js/jquery-1.42.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/static/js/jquery.js'/>"></script>
    <link rel="stylesheet" href="<c:url value='/static/css/base.css" type="text/css'/>"/>
    <link rel="stylesheet" href="<c:url value='/static/css/headbott.css" type="text/css'/>"/>
    <!-- Chang URLs to wherever Video.js files will be hosted -->
    <link href="<c:url value='/static/css/video-js.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/static/css/product-detailzc.css'/>" rel="stylesheet" type="text/css">
    <!-- video.js must be in the <head> for older IEs to work. -->
    <script type="text/javascript" src="<c:url value='/static/js/video.js'/>"></script>

    <link
            href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
            rel="stylesheet">
    <script
            src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
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
                <li><a href="new_info.html" style="">个人信息</a></li>
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
<script>

  var d_var=$(".search .search-txt").val();
    $(".search .search-txt").focus(function(){
        if($(this).val()==d_var){
            $(this).val("");
        }});

    $(".search .search-txt").blur(function(){
        if($(this).val()==""){
            $(this).val("找项目");
        }
    });
</script>

<div class="p-detail_con">
<div class="p-detail_contit">
    <h1>${project.psName}</h1>
    <div class="p-detail_cfx">
        <span class="p-detail_contit"><a href=""><i></i>分享</a></span>
    </div>
    <div class="p-detail_cfx2">
        <ul>
            <li class="p-detail_cfx2-1">课程</li>
            <li class="p-detail_cfx2-2">${project.user.usName}<span>|</span></li>

            <li class="p-detail_cfx2-3">1号场地<span>|</span></li>
            <li class="p-detail_cfx2-4">${project.psAddress}</li>
        </ul>
    </div>
    </div>

    <div class="p-detail-tab2">
        <ul>
            <li><a class="p-detail-tab2-tb" href="product-detailzc">项目主页</a></li>
            <li><a class="p-detail-tab2-tb2" href="view/comments.jsp">发表留言</a></li>
        </ul>
    </div>
    <div class="p-detail_con2">
        <div class="p-detail_con2l">

            <div style="width:675px;height:445px;margin:30px auto">
                <img  style="width: 650px;height: 450px" src="/upload/timg%20(1).jpg" alt="">
            </div>

<div class="p-detail_txt1">

    <h3>课程介绍</h3>
    <p>
        踏板操，即在踏板上随着动感音乐（每分钟120拍左右）有节奏地上下舞动，进行健美操的动作和步伐。它具有健美操的所有特点，同时，由于大部分动作是在踏板上完成，所以能更有效地增强心肺功能及协调性。因其主要针对的部位是下肢和臀部，具有明显耗能减脂（一节课可以消耗1000～1500千卡热能），提臀美腿，改善女性肌肉线条的功效。
    </p>
    <p>
        踏板操"
        踏板操
        踏板操
        作为一种健美操的形式在国际上日益成为时尚的减肥方法。其原因是踏板操是把体能测试中的台阶练习与健美操的动作和步伐结合，放在特制踏板上完成，因此，它具备了健美操的所有特点，再加上其高度可以调节，健身者可以根据自身情况很容易地保持运动减肥的有效强度，更有效地提高自身的协调性。 另一个原因：“踏板操”安全性较好。由于“踏板操”主要是在踏板上不停地上下移动，跳跃性动作相对较少，自然使下肢关节具有明显的屈伸和缓冲，这样就能够大大减轻对各关节的冲击，最大程度上避免了长时间跳跃造成的运动损伤。</p>
    <p>
        在健身馆里，踏板操备受女性青睐。踏板操是一项中等强度的运动，对练习者的舞蹈水平无太多要求，适宜人群较为广泛，是一种适合现代女性改善形体的运动项目。
    </p>

</div>

            <div class="detail-bott">
           <p>标签：<a href="">有氧</a><a href="">瘦身</a><a href="">man</a><a href="">Superman</a></p>
<div class="textarea1">
    <textarea class="textarea2"></textarea>

    <form action=""><input class="textarea2-tji" type="submit" value="提交" /></form>
</div>
                <script>

                    $(".detail-bott2 span a").click(function(){
                        $(".textarea1").toggle();
                    })
                </script>
            </div>
        </div>

        <div class="p-detail_con2r">

            <div class="p-detail_con2r1">
                <div class="p-detail_con2r1tit">运动准备</div>
                <div class="p-detail_con2r1min">1、运动前1小时停止进食<br>
                    2、穿着轻松、透气的运动服饰。</div>
                <div class="bot-con1zti11">

                </div>
<div class="p-detail_con2r1min">　　</div>
                <div class="llloading-bar">
<div class="loading-bar">
                <div class="amount blue" style="width:46%">
                    <div class="loaded">
                    </div>
                    <div class="lines"></div>
                </div>
            </div></div>

            </div>

            <div class="loading-bzcz">
                <div class="loading-bzcz-2">
                    课程预约
                </div>
                <div class="detali-fqrxx">
                    <div class="detali-fqrxx_header">
                        <button  style="width: 160px;height: 50px;" type="button" class="btn btn-default btn-lg">
                            <span style="margin-top: 15px" class="glyphicon glyphicon-hand-right" aria-hidden="true"></span> <a style="margin-top: -3px;margin-left: 15px" href="getAllCourse">预约该课程</a>
                        </button></div>
                    <div class="detali-fqrxx_text">
                    </div>
                </div>
            </div>

            <div class="loading-bzcz">
                <div class="loading-bzcz-3">
                </div>
                <div class="detali-fqrxx">
                    <div class="detali-fqrxx_header">
                        <img src="<c:url value='/static/images/pusd-zccc_25.png'/>" alt=""/>
                    </div>
                    <div class="detali-fqrxx_text detali-fqrxx_text2">

                    </div>

                </div>
                <div class="detali-fqrxx-qbgtr"></div>
            </div>
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