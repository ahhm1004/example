<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>AHH 쇼핑몰</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<jsp:include page="common/header.jsp" />

<style>

body .container {
	z-index: 1;
	width: 1400px;
	height: 500px;
}


.productImageAll{
	position: relative;
	top: 15px;
	width: 1400px;
	height: auto;
	margin-left: auto;
	margin-right: auto;
}
 
.productImageLine {
	height: 500px;
	list-style: none;
	text-align: center;
	padding-left: 0px;
	margin-left: 20px;
}

.productImagePiece {
	display: inline-block;
	margin-right: 20px;
	width: 320px;
	height: auto;
	text-align: center;
}

.img-responsive {
	height: 380px;
}

.productImageDetail{
	width: 90%;
    margin: 0 auto;
    padding: 0;
    text-align: center;
}
footer .contaier-fruid{
	pdding-top: 15px;
}
</style>
</head>
<body>

	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<a href="#"> <img src="image/flower.jpg" alt="IMAGE"></a>
					<div class="carousel-caption">
						<h3>다른 내일을 위해</h3>
						<p>CT 패션</p>
					</div>
				</div>

				<div class="item">
					<img src="image/cloth.jpg" alt="Image">
					<div class="carousel-caption">
						<h3>다른 내일을 위해</h3>
						<p>CT 패션</p>
					</div>
				</div>

				<div class="item">
					<img src="image/show.jpg" alt="Image">
					<div class="carousel-caption">
						<h3>다른 내일을 위해</h3>
						<p>CT 패션</p>
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
	</div>

	<div class="productImageAll">
		<ul class="productImageLine">
			<li class="productImagePiece">
				<a href="/shopJSP/detail.html">
						<img src="image/Outer.jpg" class="img-responsive" alt="Image">
				</a>
				<div class="productImageDetail">
					<p>한정수량</p>
					<p>4color S/M/L/XL 사이즈</p>
					<p>19800원</p>
				</div>
			</li>

			<li class="productImagePiece">
				<a href="/shopJSP/detail.html">
						<img src="image/Top.jpg" class="img-responsive" alt="Image">
				</a>
				<div class="productImageDetail">
					<p>한정수량</p>
					<p>4color S/M/L/XL 사이즈</p>
					<p>19800원</p>
				</div>
			</li>

			<li class="productImagePiece">
				<a href="/shopJSP/detail.html">
						<img src="image/Bottom.jpg" class="img-responsive" alt="Image">
				</a>
				<div class="productImageDetail">
					<p>한정수량</p>
					<p>4color S/M/L/XL 사이즈</p>
					<p>19800원</p>
				</div>
			</li>

			<li class="productImagePiece">
				<a href="/shopJSP/detail.html">
						<img src="image/Bottom.jpg" class="img-responsive" alt="Image">
				</a>
				<div class="productImageDetail">
					<p>한정수량</p>
					<p>4color S/M/L/XL 사이즈</p>
					<p>19800원</p>
				</div>
			</li>
		</ul>
		
		<ul class="productImageLine">
			<li class="productImagePiece">
				<a href="/shopJSP/detail.html">
						<img src="image/Outer.jpg" class="img-responsive" alt="Image">
				</a>
				<div class="productImageDetail">
					<p>한정수량</p>
					<p>4color S/M/L/XL 사이즈</p>
					<p>19800원</p>
				</div>
			</li>

			<li class="productImagePiece">
				<a href="/shopJSP/detail.html">
						<img src="image/Top.jpg" class="img-responsive" alt="Image">
				</a>
				<div class="productImageDetail">
					<p>한정수량</p>
					<p>4color S/M/L/XL 사이즈</p>
					<p>19800원</p>
				</div>
			</li>

			<li class="productImagePiece">
				<a href="/shopJSP/detail.html">
						<img src="image/Bottom.jpg" class="img-responsive" alt="Image">
				</a>
				<div class="productImageDetail">
					<p>한정수량</p>
					<p>4color S/M/L/XL 사이즈</p>
					<p>19800원</p>
				</div>
			</li>

			<li class="productImagePiece">
				<a href="/shopJSP/detail.html">
						<img src="image/Bottom.jpg" class="img-responsive" alt="Image">
				</a>
				<div class="productImageDetail">
					<p>한정수량</p>
					<p>4color S/M/L/XL 사이즈</p>
					<p>19800원</p>
				</div>
			</li>
		</ul>
		
		<ul class="productImageLine">
			<li class="productImagePiece">
				<a href="/shopJSP/detail.html">
						<img src="image/Outer.jpg" class="img-responsive" alt="Image">
				</a>
				<div class="productImageDetail">
					<p>한정수량</p>
					<p>4color S/M/L/XL 사이즈</p>
					<p>19800원</p>
				</div>
			</li>

			<li class="productImagePiece">
				<a href="/shopJSP/detail.html">
						<img src="image/Top.jpg" class="img-responsive" alt="Image">
				</a>
				<div class="productImageDetail">
					<p>한정수량</p>
					<p>4color S/M/L/XL 사이즈</p>
					<p>19800원</p>
				</div>
			</li>

			<li class="productImagePiece">
				<a href="/shopJSP/detail.html">
						<img src="image/Bottom.jpg" class="img-responsive" alt="Image">
				</a>
				<div class="productImageDetail">
					<p>한정수량</p>
					<p>4color S/M/L/XL 사이즈</p>
					<p>19800원</p>
				</div>
			</li>

			<li class="productImagePiece">
				<a href="/shopJSP/detail.html">
						<img src="image/Bottom.jpg" class="img-responsive" alt="Image">
				</a>
				<div class="productImageDetail">
					<p>한정수량</p>
					<p>4color S/M/L/XL 사이즈</p>
					<p>19800원</p>
				</div>
			</li>
		</ul>
		
		
	</div>



	<footer class="container-fluid text-center">
		<p>Online Store Copyright</p>
		<form class="form-inline"></form>
	</footer>

</body>
</html>