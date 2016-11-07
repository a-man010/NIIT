<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <title>demo</title>

    <!-- Angular JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js" > </script>
    <script type="text/javascript" src="<c:url value="/resources/js/controller.js" />"></script>
    

    <%--Jquery--%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>

    <%--Data Table--%>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Carousel CSS -->
    <link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">

    <!-- Main CSS -->
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
 <link rel="stylesheet" type="text/css" href="resources/css/modalsignin.css">

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
						<li><a href="showproducts"><i
								class="glyphicon glyphicon-search"></i></a></li>
						<li
							onclick="document.getElementById('id01').style.display='block'"
							style="width: auto;"><a href="#"> Login </a></li>
						<li><a href="register"> Register </a></li>
					</ul>
				</div>

			</div>
		</div>

	</nav>
	<br>
	<!-- --------------------------------------------------HEADER------------------------------------------------------------------------------------------ -->

<!-- .......................................Model Login ................................................................. -->

	<div id="id01" class="modal">
		<c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>
		<form class="modal-content animate" action="<c:url value="/j_spring_security_check"/>" method="post">
			    <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
			<center>
			<div class="container-fluid"><br>
				<label><b>Username</b></label> <input type="text"
					placeholder="Enter Username" name="username" required><label>&nbsp<b>Password</b></label>
				<input type="password" placeholder="Enter Password" name="password"
					required>
<br>
				<button type="submit">Login</button><br>
				<input type="checkbox" checked="checked"> Remember me
			</div>
			</center>
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
	
	<!-- .......................................Model Login ................................................................. -->
	

</body>
</html>