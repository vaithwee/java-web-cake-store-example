<%--
  Created by IntelliJ IDEA.
  User: vaith
  Date: 2018/12/18
  Time: 上午12:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>商品详情</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link type="text/css" rel="stylesheet" href="css/flexslider.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.flexslider.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="layer/layer.js"></script>
    <script type="text/javascript" src="js/cart.js"></script>
    <script>
        $(function() {
            $('.flexslider').flexslider({
                animation: "slide",
                controlNav: "thumbnails"
            });
        });
    </script>
</head>
<body>

<%@ include file="header.jsp" %>


<!--//single-page-->
<div class="single">
    <div class="container">
        <div class="single-grids">
            <div class="col-md-4 single-grid">
                <div class="flexslider">

                    <ul class="slides">
                        <li data-thumb="<c:url value="${goods.cover}" />">
                            <div class="thumb-image"> <img src="<c:url value="${goods.cover}" />" data-imagezoom="true" class="img-responsive"> </div>
                        </li>
                        <li data-thumb="<c:url value="${goods.image1}" />">
                            <div class="thumb-image"> <img src="<c:url value="${goods.image1}" />" data-imagezoom="true" class="img-responsive"> </div>
                        </li>
                        <li data-thumb="<c:url value="${goods.image2}" />">
                            <div class="thumb-image"> <img src="<c:url value="${goods.image2}" />" data-imagezoom="true" class="img-responsive"> </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4 single-grid simpleCart_shelfItem">
                <h3>${goods.name}</h3>
                <div class="tag">
                    <p>分类 : <a href="<c:url value="/goodsList" />?typeid=${goods.type.id}">${goods.type.name}</a></p>
                </div>
                <p>${goods.intro}</p>
                <div class="galry">
                    <div class="prices">
                        <h5 class="item_price">¥ ${goods.price}</h5>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="btn_form">
                    <a href="javascript:;" class="add-cart item_add" onclick="buy(6)">加入购物车</a>
                </div>
            </div>
            <div class="col-md-4 single-grid1">
                <!-- <h2>商品分类</h2> -->
                <ul>

                    <li><a href="/goodsList">全部分类</a></li>
                    <c:forEach var="type" items="${types}" >
                        <li><a href="/goodsList?typeid=${type.id}">${type.name}</a></li>
                    </c:forEach>

                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>


<%@ include file="footer.jsp" %>
</body>
</html>
