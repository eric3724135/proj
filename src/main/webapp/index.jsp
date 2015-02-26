<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Carousel Template for Bootstrap</title>

<!-- Bootstrap core CSS -->
<link href="http://cdn.bootcss.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">

<!-- scroll js -->
<%-- <script src="<c:url value="/res/js/smoothscroll.js"/>"></script> --%>

<!-- Custom styles for this template -->
<!-- <link href="carousel.css" rel="stylesheet"> -->
</head>
<!-- NAVBAR
================================================== -->
<body>
	<div>
		<div class="container">
			<nav class="navbar navbar-inverse navbar-fixed-top ">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
							data-target="#navbar" aria-expanded="false" aria-controls="navbar">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">柯柯家燕窩</a>
					</div>
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="#scrollMyCarousel">首頁</a></li>
							<li><a href="#scrollFeature">特色</a></li>
							<li><a href="#scrollDetail">詳細</a></li>
							<!-- 							<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" -->
							<!-- 								role="button" aria-expanded="false">Dropdown <span class="caret"></span> -->
							<!-- 							</a> -->
							<!-- 								<ul class="dropdown-menu" role="menu"> -->
							<!-- 									<li><a href="#">Action</a></li> -->
							<!-- 									<li><a href="#">Another action</a></li> -->
							<!-- 									<li><a href="#">Something else here</a></li> -->
							<!-- 									<li class="divider"></li> -->
							<!-- 									<li class="dropdown-header">Nav header</li> -->
							<!-- 									<li><a href="#">Separated link</a></li> -->
							<!-- 									<li><a href="#">One more separated link</a></li> -->
							<!-- 								</ul></li> -->

						</ul>
						<c:if test="${customer eq null}">
							<ul class="nav navbar-nav navbar-right">
								<li><a href="/proj/signin">Sign up/Login</a></li>

							</ul>
						</c:if>
						<c:if test="${customer ne null}">
							<ul class="nav navbar-nav navbar-right">
								<li><a href="#scrollMyCarousel">${customer.email}</a></li>
								<li><a href="/proj/logout">Logout</a></li>
							</ul>
						</c:if>
					</div>
				</div>
			</nav>

		</div>
	</div>


	<!-- Carousel
    ================================================== -->
	<div id="scrollMyCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#scrollMyCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#scrollMyCarousel" data-slide-to="1"></li>
			<li data-target="#scrollMyCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="<c:url value="/res/img/slide-04.jpg"/>" alt="First slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Example headline.</h1>
						<p>
							Note: If you're viewing this page via a
							<code>file://</code>
							URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display
							properly due to web browser security rules.
						</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="<c:url value="/res/img/slide-05.jpg"/>" alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Another example headline.</h1>
						<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta
							gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="<c:url value="/res/img/slide-06.jpg"/>" alt="Third slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>One more for good measure.</h1>
						<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta
							gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#scrollMyCarousel" role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#scrollMyCarousel" role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span>
		</a>
	</div>
	<!-- /.carousel -->

	<hr>
	<!-- Marketing messaging and featurettes
    ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing">

		<!-- Three columns of text below the carousel -->
		<div id="scrollFeature" class="row">
			<c:forEach var="product" items="${products}">
				<div class="col-lg-4">
					<img id="product${product.id}img" class="img-circle" src="<c:url value='${product.imgSrc}'/>"
						alt='${product.name}' style="width: 140px; height: 140px;">
					<h2 id="product${product.id}h2">${product.name}</h2>
					<p id="product${product.id}">${product.detial}</p>
					<%-- 					<p id ="product${product.id}p" > --%>
					<a class="btn btn-default" onclick="showDetail('product${product.id}p')" role="button">View
						details &raquo;</a>
					<!-- 					</p> -->
				</div>
			</c:forEach>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->

		.
		<!-- START THE FEATURETTES -->
		<div id="scrollDetail" class="row">
			<c:forEach var="item" items="${products}" varStatus="loop">
				<hr class="featurette-divider">

				<div class="row featurette">
					<div class='col-md-7 <c:if test="${loop.index%2==0}">pull-right</c:if>'>
						<h2 class="featurette-heading">
							${item.name}
							<span class="text-muted">${item.subTitle}</span>
						</h2>
						<p class="lead">${item.detial}</p>
					</div>
					<div class="col-md-5">
						<img class="featurette-image img-responsive" src="<c:url value='${item.imgSrc}'/>"
							data-src="holder.js/500x500/auto" alt="Generic placeholder image">
					</div>
				</div>
			</c:forEach>
		</div>

		<hr class="featurette-divider">

		<!-- /END THE FEATURETTES -->


		<!-- FOOTER -->
		<footer>
			<p class="pull-right">
				<a href="#">Back to top</a>
			</p>
			<p>
				&copy; 2014 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a>
			</p>
		</footer>

	</div>
	<!-- /.container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
	<script src="http://cdn.bootcss.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<!-- 	<script src="../../assets/js/docs.min.js"></script> -->
	<!-- scroll js -->
	<script src="<c:url value="/res/js/smoothscroll.js"/>"></script>
</body>
</html>
