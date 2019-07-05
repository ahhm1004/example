<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>AHH 쇼핑몰</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href = "header.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>
<body>
	<jsp:include page="common/header.jsp" />

	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<a href="#"> <img src="http://placehold.it/1700x500?text=AHH SHOPPING" alt="IMAGE"></a>
					<div class="carousel-caption">
						<h3>FASHION</h3>
						<p>completion</p>
					</div>
				</div>

				<div class="item">
					<img src="http://placehold.it/1700x500?text=Another Tomorrow"
						alt="Image">
					<div class="carousel-caption">
						<h3>다른 내일을 위해</h3>
						<p>안효흠 패션</p>
					</div>
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<!-- 해더끝 -->

	<div class="container">
		<br>
		<div class="row">
			<a href="/shopJSP/detail.html">
				<div class="col-sm-4">
					<div class="panel panel-primary">
						<div class="panel-heading">Outer</div>
						<div class="panel-body">
							<img src="image/Outer.jpg" class="img-responsive" style="width: 100%" alt="Image">
						</div>
					</div>
				</div>
			</a>
			<a href="/shopJSP/detail.html">
				<div class="col-sm-4">
					<div class="panel panel-primary">
						<div class="panel-heading">Top</div>
						<div class="panel-body">
							<img src="image/Top.jpg" class="img-responsive" style="width: 100%" alt="Image">
						</div>
					</div>
				</div>
			</a>
			<a href="/shopJSP/detail.html">
				<div class="col-sm-4">
					<div class="panel panel-primary">
						<div class="panel-heading">Bottom</div>
						<div class="panel-body">
							<img src="image/Bottom.jpg" class="img-responsive" style="width: 100%" alt="Image">
						</div>
					</div>
				</div>
			</a>
		</div>
	</div>
	<br>

	<div class="container">
		<br>
		<div class="row">
			<a href="/shopJSP/detail.html">
				<div class="col-sm-6">
					<div class="panel panel-primary">
						<div class="panel-heading">Shoes</div>
						<div class="panel-body">
							<img src="image/Shoes.jpg" class="img-responsive" style="width: 100%" alt="Image">
						</div>
					</div>
				</div>
			</a>
			<a href="/shopJSP/detail.html">
				<div class="col-sm-6">
					<div class="panel panel-primary">
						<div class="panel-heading">ACC</div>
						<div class="panel-body">
							<img src="image/ACC.jpg" class="img-responsive" style="width: 100%" alt="Image">
						</div>
					</div>
				</div>
			</a>
		</div>
	</div>
	<br>
	<br>

	<footer class="container-fluid text-center">
		<p>Online Store Copyright</p>
		<form class="form-inline">
		</form>
	</footer>

</body>
</html>