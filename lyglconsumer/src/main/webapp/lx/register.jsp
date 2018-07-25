<%--
  Created by IntelliJ IDEA.
  User: qW
  Date: 2018/7/20
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.2.1.js"></script>
    <script src="<%=request.getContextPath()%>/lygl/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/lygl/js/scripts.js"></script>
    <link href="<%=request.getContextPath()%>/lygl/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="<%=request.getContextPath()%>/lygl/css/styles.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/lygl/css/style.css" rel="stylesheet" type="text/css" media="all" />

    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>


</head>
<body>
<!--header-->
<div class="navigation">
    <div class="container-fluid">
        <nav class="pull">
            <ul>
                <li><a  href="index.html">Home</a></li>
                <li><a  href="about.html">About Us</a></li>
                <li><a  href="blog.html">Blog</a></li>
                <li><a  href="terms.html">Terms</a></li>
                <li><a  href="privacy.html">Privacy</a></li>
                <li><a  href="contact.html">Contact</a></li>
            </ul>
        </nav>
    </div>
</div>

<div class="header">
    <div class="container">
        <!--logo-->
        <div class="logo">
            <h1><a href="index.html">REAL HOME</a></h1>
        </div>
        <!--//logo-->
        <div class="top-nav">
            <c:choose>
                <c:when test="${sessionScope.user==null}">
                    <ul class="right-icons">
                        <a href="login.jsp">请登录</a>
                    </ul>
                </c:when>
                <c:otherwise>
                    <ul class="right-icons">
                        <li><span ><i class="glyphicon glyphicon-phone"> </i>+${sessionScope.user.qq}</span></li>
                        <li><a  href="geren.jsp"><i class="glyphicon glyphicon-user"> </i><font color="#edea0d">${sessionScope.user.zhenshiname}</font></a></li>
                       <%-- <li><a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i> </a></li>--%>
                    </ul>
                </c:otherwise>
            </c:choose>
            <div class="nav-icon">
                <div class="hero fa-navicon fa-2x nav_slide_button" id="hero">
                    <a href="#"><i class="glyphicon glyphicon-menu-hamburger"></i> </a>
                </div>
                <!---
                <a href="#" class="right_bt" id="activator"><i class="glyphicon glyphicon-menu-hamburger"></i>  </a>
            --->
            </div>
            <div class="clearfix"> </div>
            <!---pop-up-box---->

            <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
            <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
            <!---//pop-up-box---->
            <div id="small-dialog" class="mfp-hide">
                <!----- tabs-box ---->
                <div class="sap_tabs">
                    <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                            <h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>For Sale</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
                            <div class="facts">
                                <div class="login">
                                    <input type="text" value="Search Address, Neighborhood, City or Zip" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search Address, Neighborhood, City or Zip';}">
                                    <input type="submit" value="">
                                </div>
                            </div>
                        </div>
                            <h2 class="resp-accordion" role="tab" aria-controls="tab_item-2"><span class="resp-arrow"></span>For Rent</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
                            <div class="facts">
                                <div class="login">
                                    <input type="text" value="Search Address, Neighborhood, City or Zip" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search Address, Neighborhood, City or Zip';}">
                                    <input type="submit" value="">
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
                    <script type="text/javascript">
                        $(document).ready(function () {
                            $('#horizontalTab').easyResponsiveTabs({
                                type: 'default', //Types: default, vertical, accordion
                                width: 'auto', //auto or any width like 600px
                                fit: true   // 100% fit in a container
                            });
                        });
                    </script>
                </div>
            </div>
            <script>
                $(document).ready(function() {
                    $('.popup-with-zoom-anim').magnificPopup({
                        type: 'inline',
                        fixedContentPos: false,
                        fixedBgPos: true,
                        overflowY: 'auto',
                        closeBtnInside: true,
                        preloader: false,
                        midClick: true,
                        removalDelay: 300,
                        mainClass: 'my-mfp-zoom-in'
                    });

                });
            </script>


        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!--//-->
<div class=" banner-buying">
    <div class=" container">
        <h3><span>Regis</span>ter</h3>
        <div class="clearfix"> </div>
        <!--initiate accordion-->
        <script type="text/javascript">
            $(function() {
                var menu_ul = $('.menu > li > ul'),
                    menu_a  = $('.menu > li > a');
                menu_ul.hide();
                menu_a.click(function(e) {
                    e.preventDefault();
                    if(!$(this).hasClass('active')) {
                        menu_a.removeClass('active');
                        menu_ul.filter(':visible').slideUp('normal');
                        $(this).addClass('active').next().stop(true,true).slideDown('normal');
                    } else {
                        $(this).removeClass('active');
                        $(this).next().stop(true,true).slideUp('normal');
                    }
                });

            });
        </script>

    </div>
</div>
<!--//header-->
<!--contact-->
<div class="login-right">
    <div class="container">
        <h3>注册</h3>
        <div class="login-top">
            <div class="form-info">
                <form id="fromzhuce">
                    <input type="text"   name="zhenshiname" placeholder="真实姓名" required="" >
                    <input type="text"   name="username" placeholder="账号" required="" >
                    <input type="password"  name="password"  placeholder="密码" required="">
                    <input type="text" id="lianxidianhua"  name="lianxidianhua" placeholder="手机号" required="" onblur="checkMobile()">
                    <input type="text"  name="email" id="emailweiyiid" onblur="emailyanzhwnf()"  placeholder="Email" required="" >
                    <input type="text" placeholder="验证码"  id="imageCode" name="imageCode"/>
                    <img src="<%=request.getContextPath()%>/authImage" onclick="F5(this)"/></br>

                    <label class="hvr-sweep-to-right">

                        <input type="button"  onclick="buttonzhuce()" value="确定注册">
                    </label>
                </form>
                <p>已有账号去,去登录→ <a href="login.jsp">登录</a></p>
            </div>

        </div>
    </div>
</div>
<!--//contact-->
<!--footer-->
<div class="footer">
    <div class="container">
        <div class="footer-top-at">
            <div class="col-md-3 amet-sed">
                <h4>Our Company</h4>
                <ul class="nav-bottom">
                    <li><a href="about.html">About Us</a></li>
                    <li><a href="blog.html">For Sale By Owner Blog</a></li>
                    <li><a href="mobile_app.html">Mobile</a></li>
                    <li><a href="terms.html">Terms & Conditions</a></li>
                    <li><a href="privacy.html">Privacy Policy</a></li>
                    <li><a href="blog.html">Blog</a></li>

                </ul>
            </div>
            <div class="col-md-3 amet-sed ">
                <h4>Work With Us</h4>
                <ul class="nav-bottom">
                    <li><a href="single.html">Real Estate Brokers</a></li>
                    <li><a href="single.html">Business Development</a></li>
                    <li><a href="single.html">Affiliate Programs</a></li>
                    <li><a href="contact.html">Sitemap</a></li>
                    <li><a href="career.html">Careers</a></li>
                    <li><a href="feedback.html">Feedback</a></li>
                </ul>
            </div>
            <div class="col-md-3 amet-sed">
                <h4>Customer Support</h4>
                <p>Mon-Fri, 7AM-7PM </p>
                <p>Sat-Sun, 8AM-5PM </p>
                <p>177-869-6559</p>
                <ul class="nav-bottom">
                    <li><a href="#">Live Chat</a></li>
                    <li><a href="faqs.html">Frequently Asked Questions</a></li>
                    <li><a href="suggestion.html">Make a Suggestion</a></li>
                </ul>
            </div>
            <div class="col-md-3 amet-sed ">
                <h4>Property Services</h4>
                <ul class="nav-bottom">
                    <li><a href="single.html">Residential Property</a></li>
                    <li><a href="single.html">Commercial Property</a></li>
                    <li><a href="login.html">Login</a></li>
                    <li><a href="register.html">Register</a></li>
                    <li><a href="typo.html">Short Codes</a></li>
                </ul>
                <ul class="social">
                    <li><a href="#"><i> </i></a></li>
                    <li><a href="#"><i class="gmail"> </i></a></li>
                    <li><a href="#"><i class="twitter"> </i></a></li>
                    <li><a href="#"><i class="camera"> </i></a></li>
                    <li><a href="#"><i class="dribble"> </i></a></li>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="col-md-4 footer-logo">
                <h2><a href="index.html">REAL HOME</a></h2>
            </div>
            <div class="col-md-8 footer-class">
                <p >Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    function F5(obj){
        obj.src="<%=request.getContextPath()%>/authImage?"+Math.random();
    }
</script>

<!--//footer-->
<script type="text/javascript">
    function emailyanzhwnf(){
        var accemail = document.getElementById("emailweiyiid");    //获取email控件对象
        if (!accemail.value == "") {
            var reg =/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;

            var bool = reg.test(accemail.value);
            if (bool == false) {
                alert("邮箱格式错误，请重新输入！");
                accemail.focus();
                return;
            }
        }
    }

        function checkMobile() {
        var str = $("#lianxidianhua").val();
            var
                re = /^1\d{10}$/
            if (re.test(str)) {
            } else {
                alert("请输入正确的手机号");
            }
    }
    function buttonzhuce() {
        checkMobile();
        emailyanzhwnf();
            $.ajax({
                url:"<%=request.getContextPath()%>/DubboLxController/zhuceUser.do",
                type:"post",
                data:$("#fromzhuce").serialize(),
                dataType:'text',
                async:false,
                success:function (data){
                    if(data == "success"){
                        alert("注册成功");
                        location.href="<%=request.getContextPath()%>/lx/login.jsp";
                    }else if(data=="CodeFail"){
                        alert("请输入正确的验证码");
                    }else if(data=="loginfile"){
                        alert("用户名已存在");
                    }
                },
                error:function(){

                }
            })



    }
</script>
</body>
</html>
