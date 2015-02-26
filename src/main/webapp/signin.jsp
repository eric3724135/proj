<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Signin Template for Bootstrap</title>

<!-- Bootstrap core CSS -->
<link href="http://cdn.bootcss.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="/res/css/signin.css"/>" rel="stylesheet">



</head>

<body>
			<form:form modelAttribute="login" action="/proj/login" method="post" class="form-signin">
				<h2 class="form-signin-heading">Please sign in</h2>
<!-- 				<label>Email address</label> -->
				<form:input id="inputEmail" path="email" class="form-control" placeholder="Email address" />
<!-- 				<label>Password</label> -->
				<form:input path="password" class="form-control" placeholder="Password" />
				<br>
				<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
			</form:form>


<%-- 	<form class="form-signin" action="/proj/login" method="post"> --%>
<!-- 		<h2 class="form-signin-heading">Please sign in</h2> -->
<!-- 		<label for="inputEmail" class="sr-only">Email address</label> -->
<!-- 		<input type="email" id="inputEmail" class="form-control" placeholder="Email address" required -->
<!-- 			autofocus> -->
<!-- 		<label for="inputPassword" class="sr-only">Password</label> -->
<!-- 		<input type="password" id="inputPassword" class="form-control" placeholder="Password" required> -->
<!-- 		<div class="checkbox"> -->
<!-- 			<label> -->
<!-- 				<input type="checkbox" value="remember-me"> -->
<!-- 				Remember me -->
<!-- 			</label> -->
<!-- 		</div> -->
<!-- 		<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button> -->
<%-- 	</form> --%>

	<!-- /container -->


</body>
</html>
