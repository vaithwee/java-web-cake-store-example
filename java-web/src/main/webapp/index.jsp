<%--
  Created by IntelliJ IDEA.
  User: vaith
  Date: 2018/12/16
  Time: 上午10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>商品列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="layer/layer.js"></script>
    <script type="text/javascript" src="js/cart.js"></script>
</head>
<body>







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


<!--banner-->

<div class="banner">
    <div class="container">
        <h2 class="hdng"><a href="detail.action?goodid=7">爱之玫瑰</a><span></span></h2>
        <p>今日精选推荐</p>
        <a class="banner_a" href="javascript:;" onclick="buy(7)">立刻购买</a>
        <div class="banner-text">
            <a href="detail.action?goodid=7">
                <img src="picture/7-1.jpg" alt="爱之玫瑰" width="350" height="350">
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

            <div class="col-md-4 gallery-grid glry-two">
                <a href="detail.action?goodid=6">
                    <img src="picture/6-1.jpg" class="img-responsive" alt="夜礼服" width="350" height="350"/>
                </a>
                <div class="gallery-info galrr-info-two">
                    <p>
                        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                        <a href="detail.action?goodid=6">查看详情</a>
                    </p>
                    <a class="shop" href="javascript:;" onclick="buy(6)">立刻购买</a>
                    <div class="clearfix"> </div>
                </div>
                <div class="galy-info">
                    <p>经典系列 > 夜礼服</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">¥ 299</h5>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 gallery-grid glry-two">
                <a href="detail.action?goodid=9">
                    <img src="picture/9-1.jpg" class="img-responsive" alt="草莓冰淇淋" width="350" height="350"/>
                </a>
                <div class="gallery-info galrr-info-two">
                    <p>
                        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                        <a href="detail.action?goodid=9">查看详情</a>
                    </p>
                    <a class="shop" href="javascript:;" onclick="buy(9)">立刻购买</a>
                    <div class="clearfix"> </div>
                </div>
                <div class="galy-info">
                    <p>冰淇淋系列 > 草莓冰淇淋</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">¥ 299</h5>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 gallery-grid glry-two">
                <a href="detail.action?goodid=3">
                    <img src="picture/3-1.jpg" class="img-responsive" alt="留恋之恋" width="350" height="350"/>
                </a>
                <div class="gallery-info galrr-info-two">
                    <p>
                        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                        <a href="detail.action?goodid=3">查看详情</a>
                    </p>
                    <a class="shop" href="javascript:;" onclick="buy(3)">立刻购买</a>
                    <div class="clearfix"> </div>
                </div>
                <div class="galy-info">
                    <p>经典系列 > 留恋之恋</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">¥ 229</h5>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 gallery-grid glry-two">
                <a href="detail.action?goodid=5">
                    <img src="picture/5-1.jpg" class="img-responsive" alt="芒果列车" width="350" height="350"/>
                </a>
                <div class="gallery-info galrr-info-two">
                    <p>
                        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                        <a href="detail.action?goodid=5">查看详情</a>
                    </p>
                    <a class="shop" href="javascript:;" onclick="buy(5)">立刻购买</a>
                    <div class="clearfix"> </div>
                </div>
                <div class="galy-info">
                    <p>经典系列 > 芒果列车</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">¥ 269</h5>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 gallery-grid glry-two">
                <a href="detail.action?goodid=2">
                    <img src="picture/2-1.jpg" class="img-responsive" alt="浪漫甜心" width="350" height="350"/>
                </a>
                <div class="gallery-info galrr-info-two">
                    <p>
                        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                        <a href="detail.action?goodid=2">查看详情</a>
                    </p>
                    <a class="shop" href="javascript:;" onclick="buy(2)">立刻购买</a>
                    <div class="clearfix"> </div>
                </div>
                <div class="galy-info">
                    <p>经典系列 > 浪漫甜心</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">¥ 229</h5>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 gallery-grid glry-two">
                <a href="detail.action?goodid=1">
                    <img src="picture/1-1.jpg" class="img-responsive" alt="玫瑰花园" width="350" height="350"/>
                </a>
                <div class="gallery-info galrr-info-two">
                    <p>
                        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                        <a href="detail.action?goodid=1">查看详情</a>
                    </p>
                    <a class="shop" href="javascript:;" onclick="buy(1)">立刻购买</a>
                    <div class="clearfix"> </div>
                </div>
                <div class="galy-info">
                    <p>经典系列 > 玫瑰花园</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">¥ 229</h5>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>

        </div>

        <div class="clearfix"></div>
        <div class="alert alert-info">新品推荐</div>
        <div class="gallery-grids">

            <div class="col-md-3 gallery-grid ">
                <a href="detail.action?goodid=14">
                    <img src="picture/14-1.jpg" class="img-responsive" alt="意大利芝士饼干"/>
                </a>
                <div class="gallery-info">
                    <p>
                        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                        <a href="detail.action?goodid=14">查看详情</a>
                    </p>
                    <a class="shop" href="javascript:;" onclick="buy(14)">立刻购买</a>
                    <div class="clearfix"> </div>
                </div>
                <div class="galy-info">
                    <p>零食系列 > 意大利芝士饼干</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">¥ 39</h5>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>

            <div class="col-md-3 gallery-grid ">
                <a href="detail.action?goodid=13">
                    <img src="picture/13-1.jpg" class="img-responsive" alt="蜂蜜蛋糕"/>
                </a>
                <div class="gallery-info">
                    <p>
                        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                        <a href="detail.action?goodid=13">查看详情</a>
                    </p>
                    <a class="shop" href="javascript:;" onclick="buy(13)">立刻购买</a>
                    <div class="clearfix"> </div>
                </div>
                <div class="galy-info">
                    <p>零食系列 > 蜂蜜蛋糕</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">¥ 36</h5>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>

            <div class="col-md-3 gallery-grid ">
                <a href="detail.action?goodid=12">
                    <img src="picture/12-1.jpg" class="img-responsive" alt="青森芝士条"/>
                </a>
                <div class="gallery-info">
                    <p>
                        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                        <a href="detail.action?goodid=12">查看详情</a>
                    </p>
                    <a class="shop" href="javascript:;" onclick="buy(12)">立刻购买</a>
                    <div class="clearfix"> </div>
                </div>
                <div class="galy-info">
                    <p>零食系列 > 青森芝士条</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">¥ 36</h5>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>

            <div class="col-md-3 gallery-grid ">
                <a href="detail.action?goodid=11">
                    <img src="picture/11-1.jpg" class="img-responsive" alt="半熟芝士"/>
                </a>
                <div class="gallery-info">
                    <p>
                        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                        <a href="detail.action?goodid=11">查看详情</a>
                    </p>
                    <a class="shop" href="javascript:;" onclick="buy(11)">立刻购买</a>
                    <div class="clearfix"> </div>
                </div>
                <div class="galy-info">
                    <p>零食系列 > 半熟芝士</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">¥ 38</h5>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>

            <div class="col-md-3 gallery-grid ">
                <a href="detail.action?goodid=10">
                    <img src="picture/10-1.jpg" class="img-responsive" alt="玫瑰舒芙蕾"/>
                </a>
                <div class="gallery-info">
                    <p>
                        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                        <a href="detail.action?goodid=10">查看详情</a>
                    </p>
                    <a class="shop" href="javascript:;" onclick="buy(10)">立刻购买</a>
                    <div class="clearfix"> </div>
                </div>
                <div class="galy-info">
                    <p>零食系列 > 玫瑰舒芙蕾</p>
                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price">¥ 28</h5>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>


        </div>
    </div>
</div>
<!--//gallery-->

<!--subscribe-->
<div class="subscribe"></div>
<!--//subscribe-->







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