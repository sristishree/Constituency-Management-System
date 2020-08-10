<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <script type="text/javascript" src="https://www.google.com/jsapi">
    </script>
    <script type="text/javascript">

      // Load the Google Transliterate API
      google.load("elements", "1", {
            packages: "transliteration"
          });

      function onLoad() {
        var options = {
            sourceLanguage:
                google.elements.transliteration.LanguageCode.ENGLISH,
            destinationLanguage:
                [google.elements.transliteration.LanguageCode.HINDI],
            shortcutKey: 'ctrl+g',
            transliterationEnabled: true
        };

        // Create an instance on TransliterationControl with the required
        // options.
        var control =
            new google.elements.transliteration.TransliterationControl(options);

        // Enable transliteration in the textbox with id
        // 'transliterateTextarea'.
        control.makeTransliteratable(['transliterateTextarea']);
      }
      google.setOnLoadCallback(onLoad);
    </script>
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  <form action="problemServlet2" method="post">
    <h4 class="top">झारखंड सरकार    |    Government of Jharkhand</h4>
    <div class="image"><img src="${pageContext.request.contextPath}/Images/logo.png" alt="logo" style="width:90px;height:90px;"></div>
    <div class="titles"><h3>शिकायत</h3> <h1>View Complains</h1></div>

    <div style="border-bottom: solid 0.5px;"></div>
    <br>
    <br>
  	<div class="header">
       <div class="container">
          <div class="row">
             <div class="col-md-5">
                <div class="logo">
                   <h1><a href="${pageContext.request.contextPath}/JSP/Index2.jsp">Welcome</a></h1>
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
                            <li><a href="${pageContext.request.contextPath}/JSP/profile2.jsp">Profile</a></li>
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
                    <li class="current"><a href="${pageContext.request.contextPath}/problemServlet2"><i class="glyphicon glyphicon-list"></i> View complains</a></li>
                    <li><a href="${pageContext.request.contextPath}/JSP/res.jsp"><i class="glyphicon glyphicon-record"></i> View Residents</a></li>
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
        <div class="content-box-large">
              <div class="container">
              <div class="row col-md-6 col-xl-offset-2 custyle">

                   
                  <table  id="dtBasicExample" class="table table-striped table-bordered table-xl " width="100%">
                    <thead>
                <tr>            
                  <th>ID</th>            
                  <th>Aadhaar</th>                      
                  <th>Complain details</th> 
                   <th>Status</th>       
                  <th>Severity</th>
                  <th>Reply</th> 
                </tr>    
              </thead> 
            <c:forEach items="${listCategory}" var="Category">
    <tr>      
        <td>${Category.id}</td>
        <td>${Category.aadhar}</td>
        <td>${Category.statement}</td>
        <td>${Category.status}</td>
        <td>${Category.severity}</td>
        <td>${Category.reply}</td>
    </tr>
</c:forEach>  
                  </table>

          </div>
          </div>
		  </div>
      </div>

      <div class="row">
          <div class="content-box-large">
            <div class="content-box-header panel-heading">
              <div class="panel-title ">Reply to a complain</div>
            </div>
            <div class="content-box-large box-with-header">
              <textarea name="cid" id="title" placeholder="Enter complain id ..." style="width:98%;height:30px;"></textarea>              
              <br>
              <br>
              <textarea name="cr" id="transliterateTextarea" placeholder="Enter reply ..." style="width:98%;height:150px;"></textarea>
              <div> Press Ctrl+G to type in Hindi / हिंदी में लिखने के लिए Ctrl+G दबाएं</div>
              <br>
              <br>
              <input type="submit" class="button" value="Submit">
              

            <br /><br />
          </div>
          </div>
        </div>
        </div>
        </div>
        </div>
    

     <link rel="stylesheet" type="text/css" href="vendors/bootstrap-wysihtml5/src/bootstrap-wysihtml5.css"></link> 

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/JS/custom.js"></script>
    <script src="${pageContext.request.contextPath}/JS/editors.js"></script>
  </body>
</html>
  
  