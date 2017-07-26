<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>订单页面</title>
		<link rel="stylesheet" href="css/cart.css" />
		<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="js/js1.js"></script>
	</head>
<body>
 		<div id="box">
			<div id="content_box">
				<div class="imfor_top">
					<div class="check_top">
						<input type="checkbox" id="all" />序号
					</div>
					<div class="pudc_top">商品</div>
					<div class="pices_top">单价</div>
					<div class="num_top">数量</div>
					<div class="totle_top">小计</div>
					<div class="del_top">操作</div>
				</div>
		 <c:forEach items="${requestScope.order_list }" var="order">
				<c:forEach items="${order.book }" var="book">
						<div class="imfor">
					<div class="check">
						<div>${order.id}</div>
					</div>
					<div class="pudc"><img src="images/${book.image}"/>${book.name}</span>
					</div>
					<div class="pices">${book.price}</div>
					<div class="num">${order.count}</div>
					<div class="totle">${book.price*order.count}</div>
					<div class="del"><a href="removeorder?book_id=${book.id }">删除</a></div>
				</div>
</c:forEach>
</c:forEach>



			</div>
			<div class="foot">
				<div class="foot_del"><a href="cart">返回购物车</a></div>
		
				<div class="foot_cash"><a href="successful">确认收货</a></div>
				<div class="foot_tol"><span>合计：￥</span><span id="susum">0</span></div>
			</div>
		</div>

</body>
</html>