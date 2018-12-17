<%--
  Created by IntelliJ IDEA.
  User: vaith
  Date: 2018/12/16
  Time: 上午10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>商品列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link type="text/css" rel="stylesheet" href="../../css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="../../css/style.css">
    <script type="text/javascript" src="../../js/jquery.min.js"></script>
    <script type="text/javascript" src="../../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../layer/layer.js"></script>
    <script type="text/javascript" src="../../js/cart.js"></script>
</head>
<body>


<jsp:include page="header.jsp">
    <jsp:param name="flag" value="1" />
</jsp:include>
<!--banner-->

<div class="banner">
    <div class="container">
        <h2 class="hdng"><a href="<c:url value="/goodsDetail" />?id=${banner.id}">${banner.name}</a><span></span></h2>
        <p>今日精选推荐</p>
        <a class="banner_a" href="javascript:;" onclick="buy(7)">立刻购买</a>
        <div class="banner-text">
            <a href="<c:url value="/goodsDetail" />?id=${banner.id}">
                <img src="${pageContext.request.contextPath}${banner.cover}" alt="${banner.name}" width="350" height="350">
            </a>
        </div>
    </div>
</div>

<!--//banner-->

<div class="subscribe2"></div>

<!--gallery-->
<div class="gallery">
    <div class="container">
        <div class="alert alert-danger">热销推荐</div>
        <div class="gallery-grids">
            <c:forEach items="${hotList}" var="goods">
                <div class="col-md-4 gallery-grid glry-two">
                    <a href="<c:url value="/goodsDetail" />?id=${goods.id}">
                        <img src="${pageContext.request.contextPath}${goods.cover}" class="img-responsive" alt="${goods.name}" width="350" height="350"/>
                    </a>
                    <div class="gallery-info galrr-info-two">
                        <p>
                            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                            <a href="<c:url value="/goodsDetail" />?id=${goods.id}">查看详情</a>
                        </p>
                        <a class="shop" href="javascript:;" onclick="buy(6)">立刻购买</a>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="galy-info">
                        <p>${goods.typename} > ${goods.name}</p>
                        <div class="galry">
                            <div class="prices">
                                <h5 class="item_price">¥ ${goods.price}</h5>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </c:forEach>


        </div>

        <div class="clearfix"></div>
        <div class="alert alert-info">新品推荐</div>
        <div class="gallery-grids">
            <c:forEach var="goods" items="${newList}" >
                <div class="col-md-3 gallery-grid ">
                    <a href="<c:url value="/goodsDetail" />?id=${goods.id}">
                        <img src="${pageContext.request.contextPath}${goods.cover}" class="img-responsive" alt="意大利芝士饼干"/>
                    </a>
                    <div class="gallery-info">
                        <p>
                            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                            <a href="<c:url value="/goodsDetail" />?id=${goods.id}">查看详情</a>
                        </p>
                        <a class="shop" href="javascript:;" onclick="buy(14)">立刻购买</a>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="galy-info">
                        <p>${goods.typename} > ${goods.name}</p>
                        <div class="galry">
                            <div class="prices">
                                <h5 class="item_price">¥ ${goods.price}</h5>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </c:forEach>

        </div>
    </div>
</div>
<!--//gallery-->

<!--subscribe-->
<div class="subscribe"></div>
<!--//subscribe-->

<%@ include file="footer.jsp" %>
</body>
</html>