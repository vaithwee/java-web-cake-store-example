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
    <link type="text/css" rel="stylesheet" href="../../css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="../../css/style.css">
    <script type="text/javascript" src="../../js/jquery.min.js"></script>
    <script type="text/javascript" src="../../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../layer/layer.js"></script>
    <script type="text/javascript" src="../../js/cart.js"></script>
</head>
<body>

<%@ include file="header.jsp" %>
<!--banner-->

<div class="banner">
    <div class="container">
        <h2 class="hdng"><a href="detail.action?goodid=7">爱之玫瑰</a><span></span></h2>
        <p>今日精选推荐</p>
        <a class="banner_a" href="javascript:;" onclick="buy(7)">立刻购买</a>
        <div class="banner-text">
            <a href="detail.action?goodid=7">
                <img src="../../picture/7-1.jpg" alt="爱之玫瑰" width="350" height="350">
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
                    <img src="../../picture/6-1.jpg" class="img-responsive" alt="夜礼服" width="350" height="350"/>
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
                    <img src="../../picture/9-1.jpg" class="img-responsive" alt="草莓冰淇淋" width="350" height="350"/>
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
                    <img src="../../picture/3-1.jpg" class="img-responsive" alt="留恋之恋" width="350" height="350"/>
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
                    <img src="../../picture/5-1.jpg" class="img-responsive" alt="芒果列车" width="350" height="350"/>
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
                    <img src="../../picture/2-1.jpg" class="img-responsive" alt="浪漫甜心" width="350" height="350"/>
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
                    <img src="../../picture/1-1.jpg" class="img-responsive" alt="玫瑰花园" width="350" height="350"/>
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
                    <img src="../../picture/14-1.jpg" class="img-responsive" alt="意大利芝士饼干"/>
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
                    <img src="../../picture/13-1.jpg" class="img-responsive" alt="蜂蜜蛋糕"/>
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
                    <img src="../../picture/12-1.jpg" class="img-responsive" alt="青森芝士条"/>
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
                    <img src="../../picture/11-1.jpg" class="img-responsive" alt="半熟芝士"/>
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
                    <img src="../../picture/10-1.jpg" class="img-responsive" alt="玫瑰舒芙蕾"/>
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

<%@ include file="footer.jsp" %>
</body>
</html>