<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/style3.css">
	<script src="script.js" type="text/javascript" ></script>
</head>
<body>

<div class="body"></div>
		<!--div class="grad"></div-->
		<form action="login" method="post">
		<div class="login-html">
		<input id="tab-1" type="radio" name="tab" value="0" class="sign-in" checked><label for="tab-1" class="tab">Residents</label>
		<input id="tab-2" type="radio" name="tab" value="1" class="sign-up"><label for="tab-2" class="tab">MP/MLA</label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">Aadhaar No</label>
					<input id="user" name="user" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" name="pass" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<input id="check" name="check" type="checkbox" class="check" >
					<label for="check"><span class="icon"></span> Keep me Signed in</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign In">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="#forgot">Forgot Password?</a>
				</div>
				<div class="group">
					<p id="danger" class="text-danger" style="text-align:center;color:#f00">${error}</>
				</div>
			</div>
			<div class="sign-up-htm">
				<div class="group">
					<label for="user"  class="label">Adhaar No</label>
					<input id="user" name="user1" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" name="pass1"type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<input id="check" name="check1" type="checkbox" class="check" >
					<label for="check"><span class="icon"></span> Keep me Signed in</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign In">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="#forgot">Forgot Password?</a>
				</div>
				<div class="group">
					<p id="danger" class="text-danger" style="text-align:center;color:#f00">${error1}</>
				</div>
			</div>
		</div>
		</form>
	</div>

</body>
</html>