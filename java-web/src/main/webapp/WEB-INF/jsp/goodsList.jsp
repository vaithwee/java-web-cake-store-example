<%--
  Created by IntelliJ IDEA.
  User: vaith
  Date: 2018/12/16
  Time: 下午9:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>首页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/simpleCart.min.js"></script>
    <script type="text/javascript" src="layer/layer.js"></script>
    <script type="text/javascript" src="js/cart.js"></script>
</head>
<body>





<%@ include file="header.jsp" %>



<!--products-->
<div class="products">
    <div class="container">
        <h2><c:choose>
            <c:when test="${empty type}">全部分类</c:when>
            <c:otherwise>${type.name}</c:otherwise>
        </c:choose></h2>

        <div class="col-md-12 product-model-sec">

            <c:forEach items="${page.list}" var="goods">
                <div class="product-grid">
                    <a href="detail.action?goodid=${goods.id}">
                        <div class="more-product"><span> </span></div>
                        <div class="product-img b-link-stripe b-animate-go  thickbox">
                            <img src="<c:url value="${goods.cover}" />" class="img-responsive" alt="${goods.name}" width="240" height="240">
                            <div class="b-wrapper">
                                <h4 class="b-animate b-from-left  b-delay03">
                                    <button>查看详情</button>
                                </h4>
                            </div>
                        </div>
                    </a>
                    <div class="product-info simpleCart_shelfItem">
                        <div class="product-info-cust prt_name">
                            <h4>${goods.name}</h4>
                            <span class="item_price">¥ ${goods.price}</span>
                            <input type="button" class="item_add items" value="加入购物车" onclick="buy(6)">
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
            </c:forEach>


            <div class="clearfix"> </div>
        </div>
        <div><div style='text-align:center;'>
            <a class='btn btn-info' <c:if test="${page.page==0}">disabled</c:if> href="<c:url value="/goodsList" />?typeid=${type.id}&page=0" >首页</a>
            <a class='btn btn-info' <c:if test="${page.page==0}">disabled</c:if> href="<c:url value="/goodsList" />?typeid=${type.id}&page=${page.page-1}" >上一页</a>
            <h2 style='display:inline;'>[${page.page+1}/${page.totalPage}]</h2>
            <h2 style='display:inline;'>[${page.totalCount}]</h2>
            <a class='btn btn-info' <c:if test="${page.page==page.totalPage-1}">disabled</c:if> href="<c:url value="/goodsList" />?typeid=${type.id}&page=${page.page+1}" >下一页</a>
            <a class='btn btn-info' <c:if test="${page.page==page.totalPage-1}">disabled</c:if> href="<c:url value="/goodsList" />?typeid=${type.id}&page=${page.totalPage-1}" >尾页</a>
            <input type='text' class='form-control' style='display:inline;width:60px;' value=''/><a class='btn btn-info' href='javascript:void(0);' onclick='location.href="<c:url value="/goodsList" />?page="+(this.previousSibling.value-1)+"&typeid=${type.id}"'>GO</a>
        </div>
        </div>
    </div>
</div>
<!--//products-->


<%@ include file="footer.jsp" %>
</body>
</html>