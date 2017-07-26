<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Bootstrap 3, from LayoutIt!</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

  </head>
  <body>


    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h1>
					LayoutIt! <small>Interface Builder for Bootstrap</small>
				</h1>
			</div>
			<div class="row">
				<div class="col-md-4">
				</div>
				<div class="col-md-4">
				</div>
				<div class="col-md-4">
					<div class="btn-group">
						 
						<button class="btn btn-default" type="button">
							<em class="glyphicon glyphicon-align-left"></em> Left
						</button> 
						<button class="btn btn-default" type="button">
							<em class="glyphicon glyphicon-align-center"></em> Center
						</button> 
						<button class="btn btn-default" type="button">
							<em class="glyphicon glyphicon-align-right"></em> Right
						</button> 
						<button class="btn btn-default" type="button">
							<em class="glyphicon glyphicon-align-justify"></em> Justify
						</button>
					</div>
				</div>
			</div>
			<div class="carousel slide" id="carousel-769485">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-769485">
					</li>
					<li data-slide-to="1" data-target="#carousel-769485">
					</li>
					<li data-slide-to="2" data-target="#carousel-769485">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img  src="images/10.jpg">
						<div class="carousel-caption">
							<h4>
								1111
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
					<div class="item">
						<img src="images/data.jpg">
						<div class="carousel-caption">
							<h4>
								Second Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
					<div class="item">
						<img src="images/design.jpg">
						<div class="carousel-caption">
							<h4>
								Third Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
				</div> <a class="left carousel-control" href="#carousel-769485" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-769485" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-6">
							<div class="row">
								<div class="col-md-4">
								</div>
								<div class="col-md-4">
									<img src="images/shuofuli.jpg" image class="img-thumbnail"> 
									<button type="button" class="btn btn-default">
											<a href="detail1?id=${id=1}">Detail</a>
									</button>
								</div>
								<div class="col-md-4">
									<div class="row">
										<div class="col-md-12">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="row">
								<div class="col-md-4">
								</div>
								<div class="col-md-4">
									<img src="images/ee.jpg" class="img-thumbnail"> 
									<button type="button" class="btn btn-default">
										<a href="detail1?id=${id=2 }">Detail</a>
									</button>
								</div>
								<div class="col-md-4">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-4">
						</div>
						<div class="col-md-4">
							<img  src="images/18.jpg">
							<button type="button" class="btn btn-default">
									<a href="detail1?id=${id=3 }">Detail</a>
							</button>
						</div>
						<div class="col-md-4">
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-4">
						</div>
						<div class="col-md-4">
							<img src="images/19.jpg" class="img-thumbnail"> 
							<button type="button" class="btn btn-default">
								<a href="detail1?id=${id=4 }">Detail</a>
							</button>
						</div>
						<div class="col-md-4">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>