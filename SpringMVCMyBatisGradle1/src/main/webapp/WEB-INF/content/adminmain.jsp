<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员后台</title>
</head>
<body>

    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="btn-group">
				 
				<button class="btn btn-default" type="button">
					<em class="glyphicon glyphicon-align-left"></em> 增加书籍
				</button> 
				<button class="btn btn-default" type="button">
					<em class="glyphicon glyphicon-align-center"></em>订单管理
				</button> 
				<button class="btn btn-default" type="button">
					<em class="glyphicon glyphicon-align-right"></em> 库存销售统计
				</button> 
				
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4">
		</div>
		<h1>增加书籍</h1>
	    					<form class="form-horizontal" role="form" action="insertbook" method="post">
						<div class="form-group">
							 <label for="inputEmail3" class="col-sm-2 control-label">商品名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="name" name="name" />
								
							</div>
						</div>
						<div class="form-group">
							 <label for="inputPassword3" class="col-sm-2 control-label">价格</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="price" name="price" />
							</div>
						</div>
						                        <div class="control-group">
							 <label class="control-label" for="descripts">商品描述</label>
							<div class="controls">
								<input type="text" name="remark" id="remark" tabindex="1" class="form-control" placeholder="商品描述" >
							</div>
						</div>
						<div class="control-group">
							 <label class="control-label" for="image">image</label>
							<div class="controls">
								<input type="file" name="image" id="image" tabindex="1" class="form-control" placeholder="image" >
							</div>
						</div>
						<div class="control-group">
							 <label class="control-label" for="image_s">image_s</label>
							<div class="controls">
								<input type="file" name="image_s" id="image_s" tabindex="1" class="form-control" placeholder="image_s" >
							</div>
						</div>
						<div class="control-group">
							 <label class="control-label" for="image_l">image_l</label>
							<div class="controls">
								<input type="file" name="image_l" id="image_l" tabindex="1" class="form-control" placeholder="image_l" >
							</div>
						</div>

						
							 <button type="submit" class="btn btn-default" >确定</button>
		<div class="col-md-4">
		</div>
</body>
</html>