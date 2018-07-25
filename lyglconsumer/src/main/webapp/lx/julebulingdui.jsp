<%--
  Created by IntelliJ IDEA.
  User: qW
  Date: 2018/7/23
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.2.1.js"></script>
    <script src="<%=request.getContextPath()%>/lygl/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/lygl/js/scripts.js"></script>
    <link href="<%=request.getContextPath()%>/lygl/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="<%=request.getContextPath()%>/lygl/css/styles.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/lygl/css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<div class="login-right">
    <div class="container">
        <h3>企业入驻申请</h3>
        <div class="login-top">
            <div class="form-info">
                <form id="fromzhuce">
                    <input type="text"   name="qyname" placeholder="企业注册名称" required="" >
                    <input type="text"   name="qyusername" placeholder="企业负责人姓名" required="" >
                    <input type="text"  name="qyfzPhoto"  placeholder="企业负责人电话" required="">
                    <input type="text" id="emile"  name="emile" placeholder="企业邮箱" required="" onblur="checkMobile()">
                    <input type="text"  name="qtadress"  placeholder="企业地址" required="">
                    <input type="text"  name="juname"  placeholder="俱乐部名称" required="">
                    <input type="text" size="5" name="jujieshao"  placeholder="俱乐部简单介绍" required="">
                    <label class="hvr-sweep-to-right">
                        <input type="button"  onclick="buttonzhuce()" value="确定注册">
                    </label>
                </form>
                <p>已有账号去,去登录→ <a href="login.jsp">登录</a></p>
            </div>

        </div>
    </div>
</div>
</body>
</html>
