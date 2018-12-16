<%--
  Created by IntelliJ IDEA.
  User: vaith
  Date: 2018/12/16
  Time: 下午12:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
                <h1 class="navbar-brand"><a href="index.action">蛋糕店</a></h1>
            </div>
            <!--navbar-header-->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="index.action" class="active">首页</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle " data-toggle="dropdown">商品分类<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-2">
                            <li>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h4>商品分类</h4>
                                        <ul class="multi-column-dropdown">

                                            <li><a class="list" href="goods.action?typeid=5">经典系列</a></li>

                                            <li><a class="list" href="goods.action?typeid=4">法式系列</a></li>

                                            <li><a class="list" href="goods.action?typeid=3">儿童系列</a></li>

                                            <li><a class="list" href="goods.action?typeid=2">零食系列</a></li>

                                            <li><a class="list" href="goods.action?typeid=1">冰淇淋系列</a></li>

                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li><a href="top.action?typeid=2" >热销</a></li>
                    <li><a href="top.action?typeid=3" >新品</a></li>

                    <li><a href="register.action?flag=-1" >注册</a></li>
                    <li><a href="login.action?flag=-1" >登录</a></li>


                    <li><a href="../admin.jsp" target="_blank">后台管理</a></li>
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
