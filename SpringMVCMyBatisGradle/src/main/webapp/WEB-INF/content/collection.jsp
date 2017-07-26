<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>收藏夹</title>
		<link rel="stylesheet" href="css/cart.css" />
		<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="js/js1.js"></script>
	</head>
<body>
 		<div id="box">
			<div id="content_box">
				<div class="imfor_top">
					<div class="check_top">
						<input type="checkbox" id="all" />全选
					</div>
					<div class="pudc_top">商品</div>
					<div class="pices_top">单价</div>
					<div class="num_top">作者</div>
					<div class="totle_top">书评</div>
					<div class="del_top">操作</div>
				</div>
		 <c:forEach items="${requestScope.collect_list }" var="collect">
				<c:forEach items="${collect.book }" var="book">
						<div class="imfor">
					<div class="check">
						<input type="checkbox" class="Each" />
					</div>
					<div class="pudc"><img src="images/${book.image}"/>${book.name}</span>
					</div>
					<div class="pices">${book.price}</div>
					<div class="num">${book.author}</div>
					<div class="totle">${book.remark}</div>


					<div class="del"><a href="removecollection?book_id=${book.id }">删除</a></div>
				</div>

					</c:forEach>
</c:forEach>
					

			</div>
			<div class="foot">
				<div class="foot_del"><a href="products">返回我的购物页面</a></div>
				<div class="foot_del"><a href="clearcollection">清空收藏夹</a></div>

			
			</div>
		</div>

</body>
</html>