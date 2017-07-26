<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Bootstrap 3, from LayoutIt!</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>

	
	<form id="resgiter" action="register" method="post">
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="row clearfix">
				<div class="col-md-4 column">
				</div>
				<div class="col-md-4 column">
				<h3>注册</h3>
					<form class="form-horizontal" role="form">
						<font color="red">${requestScope.message }</font>
						<div class="form-group">
							 <label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="loginname" name="loginname" />
								
							</div>
						</div>
						<div class="form-group">
							 <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="password" name="password">
							
							</div>
						</div>
												<div class="form-group">
							 <label for="inputEmail3" class="col-sm-2 control-label">手机号</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="phone" name="phone" />
								
							</div>
						</div>
						</div>
												<div class="form-group">
							 <label for="inputEmail3" class="col-sm-2 control-label">邮箱</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="mail" name="mail" />
								
							</div>
						</div>						


						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								 
							   <button type="submit" class="btn btn-default">提交</button>
							 
							</div>
						</div>
					</form>
					<div class="row clearfix">
						<div class="col-md-2 column">
						</div>
						<div class="col-md-6 column">

						</div>
						<div class="col-md-4 column">
						</div>
					</div>
				</div>
				<div class="col-md-4 column">
					</div>
			</div>
		</div>
	</div>
</div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
    </form>
</body>
</html>