<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Complains</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <!-- jQuery UI -->
    <link href="https://code.jquery.com/ui/1.10.3/themes/redmond/jquery-ui.css" rel="stylesheet" media="screen">

    <!-- Bootstrap -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> 
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
    <div class="titles"><h3>निवासियों की सूची</h3> <h1>List of Residents</h1></div>

    <div style="border-bottom: solid 0.5px;"></div>
    <br>
    <br>
  	<div class="header">
       <div class="container">
          <div class="row">
             <div class="col-md-5">
                <div class="logo">
                   <h1><a href="../JSP/Index2.jsp">Welcome</a></h1>
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
                    <li><a href="${pageContext.request.contextPath}/JSP/Index2.jsp"><i class="glyphicon glyphicon-home"></i> Dashboard</a></li>
                    <li><a href="${pageContext.request.contextPath}/problemServlet2"><i class="glyphicon glyphicon-list"></i> View complains</a></li>
                    <li class="current"><a href="${pageContext.request.contextPath}/JSP/res.jsp"><i class="glyphicon glyphicon-record"></i> View Residents</a></li>
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
          <div class="container">

    <div class="row col-md-6 col-xl-offset-2 custyle">

    <table  id="dtBasicExample" class="table table-striped table-bordered table-xl " width="100%">
              <thead>
                <tr>            
                  <th>Aadhaar ID</th>            
                  <th>Name</th>            
                  <th>Problems submitted</th>            
                </tr>    
              </thead>            
                
              <tr>               
                <td>1</td>                
                <td>a</td>                
                <td></td>               
              </tr> 

              <tr>               
                <td>2</td>                
                <td>s</td>                
                <td></td>               
              </tr> 

              <tr>               
                <td>3</td>                
                <td>d</td>                
                <td></td>               
              </tr> 

              <tr>               
                <td>4</td>                
                <td>f</td>                
                <td></td>               
              </tr> 

              <tr>               
                <td>5</td>                
                <td>g</td>                
                <td></td>               
              </tr> 
              

            </table>
    
        </div></div>

		  </div>
		</div>
    </div>

    

     <link rel="stylesheet" type="text/css" href="vendors/bootstrap-wysihtml5/src/bootstrap-wysihtml5.css"></link> 

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/JS/custom.js"></script>
    <script src="${pageContext.request.contextPath}/JS/editors.js"></script>
  </body>
</html>