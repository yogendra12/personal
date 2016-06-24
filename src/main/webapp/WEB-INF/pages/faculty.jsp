<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Alumin Apps</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylsheet" href="css/font-awesome.min.css">


<link rel="stylesheet" href="css/commonStyles.css">
<link rel="stylesheet" href="css/faculty.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/footer.css">


<!--	<link rel="stylesheet" href="css/childernsfamily.css"> -->


<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>


<script>
	$(document).ready(function() {
		$("#forgotpwd").click(function() {
			$("#forgotpwd,#loginformid").hide();
			$("#forgotpwdid").fadeIn("slow");

		});
		$("#loginBtn, #loginFormCloseBtn").click(function() {
			$("#forgotpwdid").fadeOut("slow");
			$("#clickHerebtn").show();
		});
	});
</script>









</head>
<body>






	<div class="col-md-12 paddingzeroxs">
   
   <div class=" marTop10 panel panel-primary" id="margintop-xs" style="border-radius: 0;margin-bottom: 0 !important;">
   <div class="panel-heading minHeight50" style="font-size:20px;align:center;text-align: center;background-color:#8B008B">
			Faculty Details
		</div>
   <div class="panel-body">
		<div class="panel panel-sky">
		<!--	<div class="panel-heading panelHead-sky" data-toggle="collapse" data-target="#user_1">
					<div class="col-md-1" style="font-size:18px;font-weight:bold;">
						Year						
					</div>
					<div class="col-md-1" style="font-size:18px;font-weight:bold;padding-left:30px">
						Subject						
					</div>					
					<div class="col-md-2 " style="font-size:18px;font-weight:bold;margin-top: -19px;padding-left:65px">
						Faculty
					</div>
					<div class="col-md-1 " style="font-size:18px;font-weight:bold;">
						Contact
					</div>
					<div class="col-md-2 " style="font-size:18px;font-weight:bold;    margin-top: -19px;padding-left:72px">
						Enail
					</div>
					<div class="col-md-2 " style="font-size:18px;font-weight:bold;    margin-top: -19px;padding-left:50px">
						Photo
					</div>
					<div class="col-md-3 " style="font-size:18px;font-weight:bold;padding-left:50px">
						About
					</div>
					
				</div>  -->
				
				
<div class="table-responsive">
  <table class="table">
    <thead class="tablehead" style="border: 1px solid orange;">
      <tr>
        <th class="year">Year</th>
        <th class="subject">Subject</th>
        <th class="faculty">Faculty</th>
        <th class="contact">Contact</th>
        <th class="email">Email</th>
        <th class="photo">Photo</th>
		<th class="about">About</th>
    </tr></thead>
    <tbody>
      <tr>
        <td>1st year</td>
        <td>Mathematics-1</td>
        <td>Gujjala Anjaneya vara prasad</td>
        <td>98989899798</td>
        <td>GujjalaAnjaneyavaraprasad@gmail.com</td>
        <td><img src="images/bird1.png" name="image" class="imageSpace"></td>
		<td>EMA organizes various events/projects/conferences in different countries ranging from those focused on developing additional soft skills of our membership to those focused on raising awareness of various issues affecting our societies.</td>
      </tr>
	  <tr>
        <td>1st year</td>
        <td>Mathematics-2</td>
        <td>Gujjala Anjaneya vara prasad</td>
        <td>98989899798</td>
        <td style="word-wrap: break-word;">facultyemail3@gmail.com</td>
        <td><img src="images/bird.jpg" name="image" class="imageSpace"></td>
		<td>EMA organizes various events/projects/conferences in different countries ranging from those focused on developing additional soft skills of our membership to those focused on raising awareness of various issues affecting our societies.</td>
      </tr>
	  <tr>
        <td>1st year</td>
        <td>Physics</td>
        <td>facultyname</td>
        <td>97798687796</td>
        <td>facultyemail3@gmail.com</td>
        <td><img src="images/bird1.png" name="image" class="imageSpace"></td>
		<td>EMA organizes various events/projects/conferences in different countries ranging from those focused on developing additional soft skills of our membership to those focused on raising awareness of various issues affecting our societies.</td>
      </tr>
	    <tr>
        <td>2nd year</td>
        <td>Mathematics-2</td>
        <td>facultyname
        </td><td>97798687796</td>
        <td>facultyemail3@gmail.com</td>
        <td><img src="images/bird.jpg" name="image" class="imageSpace"></td>
		<td>EMA organizes various events/projects/conferences in different countries ranging from those focused on developing additional soft skills of our membership to those focused on raising awareness of various issues affecting our societies.</td>
      </tr>
	   
	  
	 
	 
	 
    </tbody>
  </table>
  </div>
		
   </div>
   
   </div>
   </div>
   </div>
</body>
<script>
	$(document).ready(function() {
		$("#clickHerebtn").click(function() {
			$("#clickHerebtn").hide();
			$("#loginformid").fadeIn("slow");
		});
		$("#loginBtn, #loginFormCloseBtn").click(function() {
			$("#loginformid").fadeOut("slow");
			$("#clickHerebtn").show();
		});
		$("#forgotpwd").click(function() {
			$("#loginformid").hide();
			$("#forgotpwdid").fadeIn("slow");

		});
		$("#submitBtn, #forgotFormCloseBtn").click(function() {
			$("#forgotpwdid").fadeOut("slow");
			$("#clickHerebtn").show();
		});

	});
</script>

</html>
