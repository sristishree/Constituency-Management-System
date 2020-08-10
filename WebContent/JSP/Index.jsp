<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta charset="utf-8">

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- styles -->
    <link href="${pageContext.request.contextPath}/CSS/styles.css" rel="stylesheet">
  </head>
  <body>
  <h4 class="top">झारखंड सरकार    |    Government of Jharkhand</h4>
<div class="image"><img src="${pageContext.request.contextPath}/Images/logo.png" alt="logo" style="width:90px;height:90px;"></div>
<div class="titles"><h3>डैशबोर्ड</h3> <h1>Dashboard</h1></div>

<div style="border-bottom: solid 0.5px;"></div>
<br>
<br>
  	<div class="header">
	     <div class="container">
	        <div class="row">
	           <div class="col-md-5">
	              <div class="logo">
	                 <h1><a href="Index.jsp">Welcome ${name}</a></h1>
	              </div>
	           </div>
	           <div class="col-md-5">
	              <div class="row">
	               
	              </div>
	           </div>
	           <div class="col-md-2">
	              <div class="navbar navbar-inverse" role="banner">
	                  <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
	                    <ul class="nav navbar-nav">
	                      <li class="dropdown">
	                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">My Account <b class="caret"></b></a>
	                        <ul class="dropdown-menu animated fadeInUp">
	                          <li><a href="${pageContext.request.contextPath}/JSP/profile.jsp">Profile</a></li>
	                          <li><a href="http://localhost:8080/Project_0.3/residentWelcome">Logout</a></li>
	                        </ul>
	                      </li>
	                    </ul>
	                  </nav>
	              </div>
	           </div>
	        </div>
	     </div>
	</div>

    <div class="page-content">
    	<div class="row">
		  <div class="col-md-2">
		  	<div class="sidebar content-box" style="display: block;">
                <ul class="nav">
                    <!-- Main menu -->
                    <li class="current"><a href="${pageContext.request.contextPath}/JSP/Index.jsp"><i class="glyphicon glyphicon-home"></i> Dashboard</a></li>
                    <li><a href="${pageContext.request.contextPath}/problemServlet"><i class="glyphicon glyphicon-list"></i> View complains</a></li>
                    <li><a href="${pageContext.request.contextPath}/JSP/funds.jsp"><i class="glyphicon glyphicon-record"></i> Funds</a></li>
                    <li><a href="${pageContext.request.contextPath}/complainServlet"><i class="glyphicon glyphicon-pencil"></i> Draft complaint</a></li>
                    <li><a href=""><i class="glyphicon glyphicon-tasks"></i> Chatroom</a></li>
                    <li class="submenu">
                         <a href="#">
                            <i class="glyphicon glyphicon-list"></i> Reports
                            <span class="caret pull-right"></span>
                         </a>
                         <!-- Sub menu -->
                         <ul>
                            <li><a href="">Constituency report</a></li>
                            <li><a href="">Department-wise reports</a></li>
                            <li><a href="">Fund allotment report</a></li>
                        </ul>
                    </li>
                </ul>
             </div>
		  </div>
		  <div class="col-md-10">
		  	<div class="row">
		  		<div class="col-md-6">
		  			<div class="content-box-large">
		  				
		  				<div class="panel-body">
		  					<div id="myCarousel" class="carousel slide" data-ride="carousel">
								  <!-- Indicators -->
								  

								  <!-- Wrapper for slides -->
								  <div class="carousel-inner">
								    <div class="item active">
								      <img src="${pageContext.request.contextPath}/Images/cd5.jpg" alt="Los Angeles" style="width:100%;height:250px;" >
								    </div>

								    <div class="item">
								      <img src="${pageContext.request.contextPath}/Images/cd1.jpg" alt="Chicago" style="width:100%;height:250px;">
								    </div>

								    <div class="item"	>
								      <img src="${pageContext.request.contextPath}/Images/cd2.jpg" alt="New York" style="width:100%;height:250px;">
								    </div>
								  </div>
								<ol class="carousel-indicators">
								    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								    <li data-target="#myCarousel" data-slide-to="1"></li>
								    <li data-target="#myCarousel" data-slide-to="2"></li>
								  </ol>

								  <!-- Left and right controls -->
								  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
								    <span class="glyphicon glyphicon-chevron-left"></span>
								    <span class="sr-only">Previous</span>
								  </a>
								  <a class="right carousel-control" href="#myCarousel" data-slide="next">
								    <span class="glyphicon glyphicon-chevron-right"></span>
								    <span class="sr-only">Next</span>
								  </a>

								</div>

								<div class="alert alert-success ">
								  <strong>Notification : </strong>Some <a href="problem.htm" class="alert-link">new problems</a> have been submitted in your constituency.
								</div>

		  				</div>
		  			</div>
		  		</div>

		  		<div class="col-md-6">
		  			<div class="row">
		  				<div class="col-md-12">
		  					<div class="content-box-header">
			  					<div class="panel-title">Notices and announcements</div>
								
				  			</div>
				  			<div class="content-box-large box-with-header">
				  				
					  		
								<br /><br />
							</div>
		  				</div>
		  			</div>
		  			
		  		</div>
		  	</div>

		  	<div class="row">
		  		<div class="col-md-12 panel-warning">
		  			<div class="content-box-header panel-heading">
	  					<div class="panel-title ">MP/MLA</div>
		  			</div>
		  			<div class="content-box-large box-with-header">
			  			<ul>
			  			<li>The MP of your constituency is XYZ</li>
			  			<li>The MLA of your constituency is  ABC</li>
			  			</ul>
						<br /><br />
					</div>
		  		</div>
		  	</div>

		  </div>
		</div>
    </div> 
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/JS/custom.js"></script>
    <script src="${pageContext.request.contextPath}/JS/editors.js"></script>
  </body>
</html>