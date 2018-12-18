<%--
  Created by IntelliJ IDEA.
  User: vaith
  Date: 2018/12/18
  Time: 下午9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>用户登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <%@include file="javascript.jsp"%>
</head>
<body>

<%@ include file="header.jsp"%>

<!--account-->
<div class="account">
    <div class="container">
        <div class="register">
            <c:if test="${not empty msg}" >
                <div class="alert alert-info">${msg}</div>
            </c:if>
            <form action="<c:url value="/user/login" />" method="post">
                <div class="register-top-grid">
                    <h3>用户登录</h3>
                    <div class="input">
                        <span>用户名 <label style="color:red;">*</label></span>
                        <input type="text" name="username" placeholder="请输入用户名" required="required">
                    </div>
                    <div class="input">
                        <span>密码 <label style="color:red;">*</label></span>
                        <input type="text" name="password" placeholder="请输入密码" required="required">
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="register-but text-center">
                    <input type="submit" value="提交">
                    <div class="clearfix"> </div>
                </div>
            </form>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--//account-->






<!--footer-->
<div class="footer">
    <div class="container">
        <div class="text-center">
            <p>SiKi学院 www.sikiedu.com © All rights Reseverd</p>
        </div>
    </div>
</div>
<!--//footer-->


</body>
</html>