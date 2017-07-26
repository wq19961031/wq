<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>商品详情</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='https://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!--//fonts-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
				<script type="text/javascript" src="js/single.js">
				
				</script>

<script src="js/single.js">
</script>
<script src="js/single.js">
</script>
</head>
<body>
  <!--header-->
	<div class="header">
		<div class="header-top">
			<div class="container">	
			<div class="header-top-in">			
				<div class="logo">
			
					<a href="index.html"><img src="images/logo.png" alt=" " ></a>
				</div>
				<div class="header-in">
					欢迎[${sessionScope.user.loginname }]访问
					<ul class="icon1 sub-icon1">
							<li  ><a href="favorite">收藏夹 (0)</a> </li>
							<li  ><a href="register"> 注册</a></li>
							<li ><a href="#" > 修改密码</a></li>
							<li > <a href="cart" >购物车</a> </li>	
							<li><div class="cart">
									<a href="#" class="cart-in"> </a>
									<span> 0</span>
								</div>
								<ul class="sub-icon1 list">
						  <h3>Recently added items(2)</h3>
						  <div class="shopping_cart">
							  <div class="cart_box">
							   	 <div class="message">
							   	     <div class="alert-close"> </div> 
					                <div class="list_img"><img src="images/14.jpg" class="img-responsive" alt=""></div>
								    <div class="list_desc"><h4><a href="#">velit esse molestie</a></h4>1 x<span class="actual">
		                             $12.00</span></div>
		                              <div class="clearfix"></div>
	                              </div>
	                            </div>
	                            <div class="cart_box1">
								  <div class="message1">
							   	     <div class="alert-close1"> </div> 
					                <div class="list_img"><img src="images/15.jpg" class="img-responsive" alt=""></div>
								    <div class="list_desc"><h4><a href="#">velit esse molestie</a></h4>1 x<span class="actual">
		                             $12.00</span></div>
		                              <div class="clearfix"></div>
	                              </div>
	                            </div>
	                        </div>
	                        <div class="total">
	                        	<div class="total_left">CartSubtotal : </div>
	                        	<div class="total_right">$250.00</div>
	                        	<div class="clearfix"> </div>
	                        </div>
                            <div class="login_buttons">
							  <div class="check_button"><a href="checkout.html">Check out</a></div>
							  <div class="clearfix"></div>
						    </div>
					      <div class="clearfix"></div>
						</ul>
							</li>
						</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			</div>
		</div>
		<div class="header-bottom">
		<div class="container">
			<div class="h_menu4">
				<a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
					<li class="active"><a href="main"><i> </i>首页</a></li>
					<li ><a href="#" >书类</a>
						<ul class="drop">
							<li><a href="products">文学</a></li>
							<li><a href="products">小说</a></li>
							<li><a href="products">计算机</a></li>
							<li><a href="products">孟现飞大师的书</a></li>
					
						</ul>
						</li> 						
						<li><a href="products" > 图书商城</a></li>            
						  				 

					
				</ul>
				<script type="text/javascript" src="js/nav.js"></script>
			</div>
		</div>
		</div>
		<div class="header-bottom-in">
			<div class="container">
			<div class="header-bottom-on">
			<p class="wel"><a href="register">Welcome visitor you can create an account.</a></p>
			<div class="header-can">
				<ul class="social-in">
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i class="facebook"> </i></a></li>
						<li><a href="#"><i class="twitter"> </i></a></li>					
						<li><a href="#"><i class="skype"> </i></a></li>
					</ul>	
					<div class="down-top">		
							<select class="in-drop">
							  <option value="Dollars" class="in-of">看到这个的人最帅</option>
							  <option value="Euro" class="in-of">看到这个的人最好</option>
							  <option value="Yen" class="in-of">老师平时分给高点</option>
							</select>
					 </div>
					<div class="search">
						<form>
							<input type="text" value="Search" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '';}" >
							<input type="submit" value="">
						</form>
					</div>


					<div class="clearfix"> </div>
			</div>
			<div class="clearfix"></div>
		</div>
		</div>
		</div>
	</div>
	<!---->
		<div class="container">
			<div class="single">
				<div class="col-md-9 top-in-single">
					<div class="col-md-5 single-top">	
						<!-- start product_slider -->
				    <div class="flexslider">
							        <!-- FlexSlider -->
										
										<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

						
									<!-- //FlexSlider-->

							  <ul class="slides">

								<li data-thumb="images/${book.image}
								
								">
									<div class="thumb-image"> <img src="images/${book.image }" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								
								<li data-thumb="images/${book.image_s }">
									 <div class="thumb-image"> <img src="images/${book.image_s }" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								
								<li data-thumb="images/${book.image_l }">
								   <div class="thumb-image"> <img src="images/${book.image_l }" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								
							

							  </ul>

							<div class="clearfix"></div>
					</div>
				<!-- end product_slider -->

					</div>	
					<div class="col-md-7 single-top-in">
						<div class="single-para">
							<h4>${book.name }</h4>
							<div class="para-grid">
								<span  class="add-to">${book.price}</span>
								<a href="save?book_id=${book.id}" class="hvr-shutter-in-vertical cart-to">Add to Cart</a>					
								<div class="clearfix"></div>
							 </div>

				
								<a href="newcollect?book_id=${book.id}" class="hvr-shutter-in-vertical cart-to">Add to Collection</a>					
								<div class="clearfix"></div>
							 </div>
							   <a href="comment" class="hvr-shutter-in-vertical cart-to">Comment</a>					
								<div class="clearfix"></div>
							 </div>
							<h5>100 items in stock</h5>
							<div class="available">
								<h6>Available Options :</h6>
						
								购买数量：<input type="text" name="count" id="count">本</li>

							</ul>
						
						</div>
							<p>${book.remark }</p>
							
						
							
						</div>
					</div>

						
					<div class="clearfix"></div>
					</div>
				</div>
			
			
				<div class="clearfix"> </div>
		</div>
	</div>
	
		

			 <script src="js/jquery.min.js"></script>
			<script type="text/javascript" src="js/move-top.js"></script>
			<script type="text/javascript" src="js/nav.js"></script>
			<script src="js/imagezoom.js"></script>
		  	<script defer src="js/jquery.flexslider.js"></script>
			<script type="text/javascript" src="js/single.js"></script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

		</div>
</body>
</html>