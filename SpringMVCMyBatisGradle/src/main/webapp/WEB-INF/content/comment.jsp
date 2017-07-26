<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
					 <form class="form-horizontal" action="com"  method="post" >
					<ul class="pf">  
            <li data-rh-score="0"> 
             
                <span class="title" for="logistica">物流</span>  
               <div class="form-group">
    <select class="form-control" name="logistica" id="logistica"> 
      <option>1</option> 
      <option>2</option> 
      <option>3</option> 
      <option>4</option> 
      <option>5</option> 
      </select>
  </div>
               
            </li>  
            <li data-rh-score="0">  
                <span class="title" for="quality">质量</span>  
                               <div class="form-group">
    <select class="form-control"name="quality" id="quality"> 
      <option>1</option> 
      <option>2</option> 
      <option>3</option> 
      <option>4</option> 
      <option>5</option> 
      </select>
  </div>
            </li>  
            <li data-rh-score="0">  
                <span class="title" for="service">服务</span>  
                                               <div class="form-group">
    <select class="form-control" name="service" id ="service"> 
      <option>1</option> 
      <option>2</option> 
      <option>3</option> 
      <option>4</option> 
      <option>5</option> 
      </select>
  </div>  
  <li data-rh-score="0">
  <span class="title" for="comments">客户评论</span> 
     	<input type="text" id="comments" name="comments" class="form-control"  style="width:200px;height:100px;">
   </li>
   <li data-rh-score="0">
  
    		<span class="title" for="image5">添加图片</span> 
	    	 <input type="file" id="image5" name="image5" class="form-control" >
            </li> 
              <button type="submit" class="btn btn-default btn-lg">添加评论</button>   
        </ul> 

				       </form> 
         
</body>
</html>