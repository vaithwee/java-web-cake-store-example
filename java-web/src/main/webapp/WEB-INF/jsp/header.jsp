<%--
  Created by IntelliJ IDEA.
  User: vaith
  Date: 2018/12/16
  Time: 下午12:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<div class="header">
    <div class="container">
        <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <h1 class="navbar-brand"><a href="<c:url value="/index" />">蛋糕店</a></h1>
            </div>
            <!--navbar-header-->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">

                    <li><a href="<c:url value="/index" />"<c:if test="${param.flag==1}" >class="active"</c:if> >首页</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle <c:if test="${param.flag==2}" >active</c:if>" data-toggle="dropdown">商品分类<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-2">
                            <li>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h4>商品分类</h4>
                                        <ul class="multi-column-dropdown">

                                            <li><a class="list" href="/goodsList">全部分类</a></li>
                                            <c:forEach var="type" items="${types}" >
                                                <li><a class="list" href="/goodsList?typeid=${type.id}">${type.name}</a></li>
                                            </c:forEach>

                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li><a href="<c:url value="/recommendGoodsList" />?typeid=2" <c:if test="${param.flag==3 && typeid==2}" >class="active"</c:if> >热销</a></li>
                    <li><a href="<c:url value="/recommendGoodsList" />?typeid=3" <c:if test="${param.flag==3 && typeid==3}" >class="active"</c:if> >新品</a></li>

                    <c:if test="${empty user}" >
                        <li><a href="<c:url value="/user/register" />" >注册</a></li>
                        <li><a href="<c:url value="/user/login" />" >登录</a></li>
                    </c:if>
                    <c:if test="${not empty user}">
                        <li><a href="<c:url value="/user/center" />" >用户中心</a></li>
                        <li><a href="<c:url value="/user/logout" />" >退出</a></li>
                    </c:if>


                    <c:if test="${not empty user && user.isadmin}" >
                        <li><a href="../admin.jsp" target="_blank">后台管理</a></li>
                    </c:if>

                </ul>
                <!--/.navbar-collapse-->
            </div>
            <!--//navbar-header-->
        </nav>
        <div class="header-info">
            <div class="header-right search-box">
                <a href="javascript:;"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>
                <div class="search">
                    <form class="navbar-form" action="search.action">
                        <input type="text" class="form-control" name="name">
                        <button type="submit" class="btn btn-default" aria-label="Left Align">搜索</button>
                    </form>
                </div>
            </div>

            <div class="header-right cart">
                <a href="cart.action">
                    <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"><span class="card_num">0</span></span>
                </a>
            </div>
            <div class="header-right login">
                <a href="my.action"><span class="glyphicon" aria-hidden="true"></span></a>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!--//header-->
