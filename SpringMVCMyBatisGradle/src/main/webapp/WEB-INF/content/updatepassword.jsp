<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
</head>
<body>
	<h3>修改密码</h3>
	<form action="updatepassword1" method="post">
		
		<table>
			<tr>
				<td><label>用户名: </label></td>
				<td><input type="text" id="loginname" name="loginname"></td>
			</tr>
			<tr>
				<td><label>修改后的密码: </label></td>
				<td><input type="text" id="password" name="password"></td>
			</tr>
			<tr>
				<td><input type="submit" value="提交"></td>
			</tr>
			
		</table>
	</form>
</body>
</html>