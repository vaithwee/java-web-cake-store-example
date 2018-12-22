<%--
  Created by IntelliJ IDEA.
  User: vaith
  Date: 2018/12/22
  Time: 下午11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>购物车</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <%@ include file="javascript.jsp" %>
</head>
<body>

<%@ include file="header.jsp" %>

<!--cart-items-->
<div class="cart-items">
    <div class="container">



        <h2>我的购物车</h2>

        <c:forEach items="${shoppingCar.itemMap}" var="item" >


        <div class="cart-header col-md-6">
            <div class="cart-sec simpleCart_shelfItem">
                <div class="cart-item cyc">
                    <a href="<c:url value="/goodsDetail" />?id=${item.value.goods.id}">
                        <img src="<c:url value="${item.value.goods.cover}" />" class="img-responsive">
                    </a>
                </div>
                <div class="cart-item-info">
                    <h3><a href="<c:url value="/goodsDetail" />?id=${item.value.goods.id}">${item.value.goods.name}</a></h3>
                    <h3><span>单价: ¥ ${item.value.goods.price}</span></h3>
                    <h3><span>数量: ${item.value.amount}</span></h3>
                    <a class="btn btn-info" href="javascript:buy(${item.value.goods.id});">增加</a>
                    <a class="btn btn-warning" href="javascript:lessen(${item.value.goods.id});">减少</a>
                    <a class="btn btn-danger" href="javascript:deletes(${item.value.goods.id});">删除</a>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        </c:forEach>

        <div class="cart-header col-md-12">
            <hr>
            <h3>订单总金额: ¥ ${shoppingCar.total}</h3>
            <a class="btn btn-success btn-lg" style="margin-left:74%" href="save.action">提交订单</a>
        </div>



    </div>
</div>
<!--//cart-items-->






<%@ include file="footer.jsp" %>

</body>
</html>