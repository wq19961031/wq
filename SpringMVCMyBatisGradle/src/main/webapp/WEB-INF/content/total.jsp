<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户评价</title>

</head>
<body>

   <h2>用户评价</h2>
   
    <button type="submit" class="btn btn-default btn-lg"><a href="total">查看评论</a></button>  
    <table border="1">
     	<thead>
        	<tr> 
            	<th >物流评价</th>     
                <th >质量评价</th>
                <th >服务评价</th>
                <th >客户评论 </th>
                <th >图片展示</th>
            </tr>
       </thead>
            <c:forEach items="${requestScope.comment_list }" var="comment">
             <tr >
                <td >${comment.logistica }</td>
                <td >${comment.quality }</td>
             	<td >${comment.service }</td>
             	<td>${comment.comments }</td> 
             	<td ><img src="images/${comment.image5 }" height="80"></td>

 
             </tr>
            </c:forEach>
       
     </table>


</body>
</html>