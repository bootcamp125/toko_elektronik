<%@page import="com.xsis.training125.model.Karyawan"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Halaman Login |</title>

<!-- Bootstrap -->
<link
	href="/assets/gentelella-master/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="/assets/gentelella-master/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="/assets/gentelella-master/vendors/nprogress/nprogress.css"
	rel="stylesheet">
<!-- Animate.css -->
<link
	href="/assets/gentelella-master/vendors/animate.css/animate.min.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link href="/assets/gentelella-master/build/css/custom.min.css"
	rel="stylesheet">
</head>
<body class="login">
	<div>
		<a class="hiddenanchor" id="signup"></a> <a class="hiddenanchor"
			id="signin"></a>

		<div class="login_wrapper">
			<div class="animate form login_form">
				<section class="login_content">
					<form>
						<h1>Login Form</h1>
						<div>
							<input type="text" class="form-control" placeholder="Username"
								required="" name="usernameK" id="textUsername" />
						</div>
						<div>
							<input type="password" class="form-control"
								placeholder="Password" required="" name="passwordK"
								id="textPass" />
						</div>
						<div>
							<a class="btn btn-default submit login-btn">Log in</a>
						</div>

						<div class="clearfix"></div>

						<div class="separator">

							<div class="clearfix"></div>
							<br />

							<div>
								<h1>
									<i class="fa fa-paw"></i> Toko Elektronik
								</h1>
								<p>©2017 Project Bootcamp-125 Toko Elektronik</p>
							</div>
						</div>
					</form>
					<script type="text/javascript" src="/assets/js/jquery-3.2.1.min.js"></script>
					<script type="text/javascript">
						$(document).ready(function() {
							$('.login-btn').on('click', function() {
								var username = $('#textUsername').val();
								var pass = $('#textPass').val();
								$.ajax({
									type : 'GET',
									url : '/login/' + username + '/' + pass,
									success : function(data) {
										//console.log(JSON.stringify(data));
										window.location = "/home/"+username;
									}
								});

							});

						});
					</script>
				</section>
			</div>
		</div>
	</div>
</body>
</html>