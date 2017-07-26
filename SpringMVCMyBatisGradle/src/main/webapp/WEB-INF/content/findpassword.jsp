<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>找回密码</title>
</head>
<body>

	<h3>请输入正确的信息</h3>
	<form action="find" method="post">
		
		<table>
			<tr>
				<td><label>登录名: </label></td>
				<td><input type="text" id="loginname" name="loginname"></td>
			</tr>
			<tr>
				<td><label>邮箱: </label></td>
				<td><input type="text" id="mail" name="mail"></td>
			</tr>
			<tr>
				<td><input type="submit" value="提交"></td>
			</tr>
			
		</table>
	</form>

</body>
</html>