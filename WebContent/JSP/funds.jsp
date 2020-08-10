<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Bootstrap Admin Theme v3</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <!-- jQuery UI -->
    <link href="https://code.jquery.com/ui/1.10.3/themes/redmond/jquery-ui.css" rel="stylesheet" media="screen">

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- styles -->
    <link href="${pageContext.request.contextPath}/CSS/styles.css" rel="stylesheet">

    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <h4 class="top">झारखंड सरकार    |    Government of Jharkhand</h4>
    <div class="image"><img src="${pageContext.request.contextPath}/Images/logo.png" alt="logo" style="width:90px;height:90px;"></div>
    <div class="titles"><h3>कोष व्यय</h3> <h1>Funds expenditure</h1></div>

    <div style="border-bottom: solid 0.5px;"></div>
    <br>
    <br>
  	<div class="header">
       <div class="container">
          <div class="row">
             <div class="col-md-5">
                <div class="logo">
                   <h1><a href="index.htm">Welcome</a></h1>
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
                            <li><a href="../JSP/profile.jsp">Profile</a></li>
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

        <div class="content-box-large">
          <a href="https://finance-jharkhand.gov.in/budget2018.aspx">Department of Planning cum Finance, Government of Jharkhand</a>
          <br><br>
          <a href="https://www.mplads.gov.in/MPLADS/UploadedFiles/HTML/16ls/lsstat35.htm">Expenditure statement, Ranchi</a>

        </div>
     
    

     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/vendors/bootstrap-wysihtml5/src/bootstrap-wysihtml5.css"></link> 

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/JS/custom.js"></script>
    <script src="${pageContext.request.contextPath}/JS/editors.js"></script>
  </body>
</html>