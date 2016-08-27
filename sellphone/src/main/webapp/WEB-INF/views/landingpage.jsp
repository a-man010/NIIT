<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>SellPhoneHome</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quick Search</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
  
  <link rel="stylesheet" type="text/css" href="media/modalsignin.css">
</head>

<body>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<!-- --------------------------------------------------HEADER------------------------------------------------------------------------------------------ -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<!-- logo -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#mainNavBar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!-- <img src="#" class="img-circle" alt="Bird"> -->
				<a href="#" class="navbar-brand"> SellPhone </a>
			</div>
			<!-- menu -->
			<div class="collapse navbar-collapse" id="mainNavBar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="home"> Home </a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"> Category <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Bar </a></li>
							<li><a href="#"> Touch Screen </a></li>
						</ul></li>
				</ul>

				<div class="nav navbar-right">
					<ul class="nav navbar-nav">
						<li><a href="product"><i
								class="glyphicon glyphicon-search"></i></a></li>
						<li
							onclick="document.getElementById('id01').style.display='block'"
							style="width: auto;"><a href="#"> Login </a></li>
						<li><a href="signup"> Register </a></li>
					</ul>
				</div>

			</div>
		</div>

	</nav>
	<br>
	<!-- --------------------------------------------------HEADER------------------------------------------------------------------------------------------ -->


	<div class="container-fluid">
		<!-- Indicators -->
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="media/htc.jpg" alt="HTC"
						class="img-responsive">
				</div>

				<div class="item">
					<img src="media/lg.jpg" alt="LG" class="img-responsive">
				</div>

				<div class="item">
					<img src="media/nexus.jpg" alt="Huawei" class="img-responsive">
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="carousel-control left" href="#myCarousel" data-slide="prev">
				<span class="icon-prev"></span>
			</a> <a class="carousel-control right" href="#myCarousel"
				data-slide="next"> <span class="icon-next"></span>
			</a>
		</div>

	</div>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="../%pathtofile%/bootstrap.min.js"></script>
	<script>
		$('#myCarousel').carousel({
			interval : 3000
		})
	</script>

	<div class="row">
		<div class="col-md-7">
			<a href="#" class="thumbnail"> <img
				src="media/s7.jpg" alt="" style="width: 1000px; height: 400px">
			</a>
		</div>
		<div class="col-md-5">
			<a href="#" class="thumbnail"> <img
				src="media/s7_2.jpg" alt=""
				style="width: 900px; height: 400px">
			</a>
		</div>
	</div>

	<!-- .......................................Model Login ................................................................. -->

	<div id="id01" class="modal">
		
		<form class="modal-content animate" action="#">
			
			<div class="container-fluid"><br>
				<label><b>Username</b></label> <input type="text"
					placeholder="Enter Username" name="uname" required> <label><b>Password</b></label>
				<input type="password" placeholder="Enter Password" name="psw"
					required>

				<button type="submit">Login</button>
				<input type="checkbox" checked="checked"> Remember me
			</div>
				<br>
			<div class="container-fluid" style="background-color: #f1f1f1">
				<button type="button"
					onclick="document.getElementById('id01').style.display='none'"
					class="cancelbtn" align="center">Cancel</button>
				<span class="psw pull-right"><a href="#">Forgot
						password?</a></span>
			</div>
		</form>
	</div>

	<!-- --------------------------------------------------FOOTER------------------------------------------------------------------------------------------ -->
	<div class="navbar navbar-inverse" role="navigation">
		<div class="container-fluid">
			<div class="navbar-text pull-left">

				<ul class="nav navbar-nav">
					<li><a href="about">About Us</a></li>
					<li><a href="contact">Contact Us</a></li>
				</ul>

			</div>
			<div class="navbar-text pull-right">
				<ul class="nav navbar-nav">
					<li>SP 2016</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- --------------------------------------------------FOOTER  END------------------------------------------------------------------------------------------ -->

</body>
</html>