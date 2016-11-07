<%@include file="/WEB-INF/views/template/header.jsp" %>

<html>
<head>
<title>SellPhoneHome</title>

  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
 
</head>
<body>
<!-- -------------------------------------------------Corausel------------------------------------------------------------------------------------------------------------ -->
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
					<img src="resources/media/htc.jpg" alt="HTC"
						class="img-responsive">
				</div>

				<div class="item">
					<img src="resources/media/lg.jpg" alt="LG" class="img-responsive">
				</div>

				<div class="item">
					<img src="resources/media/nexus.jpg" alt="Huawei" class="img-responsive">
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
<br>
	<div class="row">
		<div class="col-md-7">
			<a href="#" class="thumbnail"> <img
				src="resources/media/s7.jpg" alt="" style="width: 1000px; height: 400px">
			</a>
		</div>
		<div class="col-md-5">
			<a href="#" class="thumbnail"> <img
				src="resources/media/s7_2.jpg" alt=""
				style="width: 900px; height: 400px">
			</a>
		</div>
	</div>





</body>
</html>
<%@include file="/WEB-INF/views/template/footer.jsp" %>