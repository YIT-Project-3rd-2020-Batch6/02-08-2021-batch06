<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.*" %>
    <%@ page import="MobileDAO.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>sign Up form</title>
<link rel="stylesheet" type="text/css" href="./css/signup.css">
<script src="validation.jsp"></script>
<body>
  <div class="sign-up-form">
	  <h1>Sign Up</h1>
	   <%
	  String msg="";
if(request.getAttribute("errormsg")!=null)
{
	msg=(String)request.getAttribute("errormsg");
    out.println("<font color=red size=2>"+msg+"</font>");
}
%>
	  <form action="RegisterServlet" method="get">
	        <p>Userid</P>
			<input type="text" name="userid" class="name" id="userid" placeholder="Enter Username"  required="required" >
			<p>Name</P>
			<input type="text" name="name" class="name" id="uname" placeholder="Enter Username" required="required">			
			<p>Gender</P>
			<input type="radio" id="male" name="gender" value="male" required="required">
            <label for="male">Male</label>
            <input type="radio" id="female" name="gender" value="female" required="required">
            <label for="female">Female</label>
            <input type="radio" id="other" name="gender" value="other" required="required">
            <label for="other">Other</label>
			<p>Email</P>
			<input type="Email" name="email"  class="name" id="email" placeholder="Enter Email" required="required">
			<p>Password</P>
			<input type="Password" name="password" class="name" id="pwd1" placeholder="Enter Password" required="required">
			<p>Confirm Password</P>
			<input type="Password" name="password" class="name" id="pwd2" placeholder="Confirm Password" required="required">
			  <p>Phone Number</P>
			<select id="ph">
			<option>+91</option>
			<option>+92</option>
			<option>+93</option>
			<option>+94</option>
			<option>+95</option>
			</select>
			<input type="Number" name="phno" id="num" placeholder="Enter Phone Number">
			 <p>Secrect Question</P>
			<select id="secretquestion" name="secretqsn">
			<option value="select">Select</option>
			<option>Your birth place?</option>
			<option>your mothers Name?</option>
			<option>Your fathers Name?</option>
			<option>Your childhood best freind Name</option>
			<option>which sports you like to play?</option>
			</select>
			 <p>Secret Answer</P>
			<input type="text" name="secretans"  class="name" id="secretanswer" placeholder=" Secrect Question Answer">
			 <p>Address</P>
			<input type="text" name="address" class="name" id="address" placeholder="Enter Address">
			
			
			<input type ="submit" name="sub" id="sub" value="Sign Up" onclick="return checkAll();"><br>
			
	  </form>
      </div>

</body>
</head>
</html>