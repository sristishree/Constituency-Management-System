<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html>
<head>
	<title>Register</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/style3.css">
</head>
<body>

<div class="body"></div>
		<!--div class="grad"></div-->
		<form method="post" action="register">
		<div class="login-html">
		<input id="tab-1" type="radio" name="tab" value="0" class="sign-in" checked><label for="tab-1"  class="tab">Residents</label>
		<input id="tab-2" type="radio" value="1" name="tab" class="sign-up"><label for="tab-2" class="tab">MP/MLA</label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input id="user" name="user" type="text" class="input">
				</div>
				<div class="group">
					<label for="user" class="label">Aadhar Number</label>
					<input id="user" name="AadharNo" type="text" class="input">
				</div>
				<div class="group">
					<label for="user" class="label">Name of Constituency</label>
					<input id="user" name="NOC" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" Name="pass" type="password" class="input" data-type="password">
				</div>

				<div class="group">
					<label for="pass" class="label">Repeat Password</label>
					<input id="pass" Name="RPass" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<label for="pass" class="label">Email Address</label>
					<input id="pass" Name="Email" type="text" class="input">
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign Up">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<label for="tab-1">Already Member?</a>
				</div>
				<div class="group">
					<p id="danger" class="text-danger" style="text-align:center;color:#f00">${error3}</>
				</div>
			</div>
			<div class="sign-up-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input id="user" name="user1" type="text" class="input">
				</div>
				<div class="group">
					<label for="user" class="label">Aadhar Number</label>
					<input id="user" name="AadharNo1" type="text" class="input">
				</div>
				<div class="group">
					<label for="user" class="label">Name of Constituency</label>
					<input id="user" name="NOC1" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" Name="pass1" type="password" class="input" data-type="password">
				</div>

				<div class="group">
					<label for="pass" class="label">Repeat Password</label>
					<input id="pass" Name="RPass1" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<label for="pass" class="label">Email Address</label>
					<input id="pass" Name="Email1" type="text" class="input">
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign Up">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<label for="tab-1">Already Member?</a>
					<div class="group">
					<p id="danger" class="text-danger" style="text-align:center;color:#f00">${error3}</>
				</div>
				</div>
			</div>
		</div>
		</form>
	</div>

</body>
</html>