<!DOCTYPE html>
<html lang="en">
<head>
<title>SellPhone</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style_carousel.css" rel="stylesheet">
 


</head>
<body>
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
				<!-- <img src="#" class="img-circle" alt="Bird"> --><a href="#"
					class="navbar-brand"> SellPhone </a>
			</div>
			<!-- menu -->
			<div class="collapse navbar-collapse" id="mainNavBar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index.html"> Home </a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"> Category <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Bar </a></li>
							<li><a href="#"> Touch Screen </a></li>
						</ul></li>
				</ul>

				<div class="nav navbar-right">
					<ul class="nav navbar-nav">
						<li><a href="search.jsp"><i class="glyphicon glyphicon-search"></i></a></li>
						<li id="myBtn"><a href="login.jsp"> Login </a></li>
						<li><a href="#"> Register </a></li>
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
					<img src="media/htc.jpg" alt="HTC" class="img-responsive">
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
			<a href="media/s7.jpg" class="thumbnail"> <img src="media/s7.jpg" alt=""
				style="width: 1000px; height: 400px">
			</a>
		</div>
		<div class="col-md-5">
			<a href="media/s7_2.jpg" class="thumbnail"> <img src="media/s7_2.jpg" alt=""
				style="width: 900px; height: 400px">
			</a>
		</div>
	</div>
	
	
	
	<!-- ----------------------------------------------------------------------------------------------------------------------------------------------------- -->
	
	
	<!-- ----------------------------------------------------------------------------------------------------------------------------------------------------- -->
	

	<!-- --------------------------------------------------FOOTER------------------------------------------------------------------------------------------ -->
	<div class="navbar navbar-inverse" role="navigation">
		<div class="container-fluid">
			<div class="navbar-text pull-left">

				<ul class="nav navbar-nav">
					<li><a href="#">About Us</a></li>
					<li><a href="#">Contact Us</a></li>
				</ul>

			</div>
			<div class="navbar-text pull-right">
				<ul class="nav navbar-nav">
					<li>Copyright 2016</li>
				</ul>
			</div>
		</div>
	</div>
<!-- --------------------------------------------------FOOTER------------------------------------------------------------------------------------------ -->

</body>
</html>
