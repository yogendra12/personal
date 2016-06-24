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
        <title> Alumini App</title>
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylsheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" href="../css/aboutus.css">
		 <link rel="stylesheet" href="../css/header.css">
		  <link rel="stylesheet" href="../css/footer.css">

        <script src="../js/jquery.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
		
		<script>
	$(document).ready(function(){
    $("#clickHerebtn").click(function(){
		$("#clickHerebtn").hide();
        $("#loginformid").fadeIn("slow");
    });
	$("#loginBtn, #loginFormCloseBtn").click(function(){
		$("#loginformid").fadeOut("slow");      
		$("#clickHerebtn").show();		
    });
});
</script>	
        
    </head>
	<body>  				 <div class="col-md-12">
   
   <div class=" marTop10 panel panel-primary" style="border-radius: 0;margin-bottom: 0 !important;">
   <div class="panel-heading minHeight50" style="font-size:20px;align:center;text-align: center;background-color:cadetblue;border-color:cadetblue">
			About Us
		</div>
   <div class="panel-body">
		<div class="panel panel-sky">
		
				<p style="padding: 10px;">	EMA organizes various events/projects/conferences in different countries ranging from those focused on developing additional soft skills of our membership to those focused on raising awareness of various issues affecting our societies.
					EMA organizes various events/projects/conferences in different countries ranging from those focused on developing additional soft skills of our membership to those focused on raising awareness of various issues affecting our societies.
					EMA organizes various events/projects/conferences in different countries ranging from those focused on developing additional soft skills of our membership to those focused on raising awareness of various issues affecting our societies.
					EMA organizes various events/projects/conferences in different countries ranging from those focused on developing additional soft skills of our membership to those focused on raising awareness of various issues affecting our societies.
					EMA organizes various events/projects/conferences in different countries ranging from those focused on developing additional soft skills of our membership to those focused on raising awareness of various issues affecting our societies.
				</p>
   </div>
   
   </div>
   </div>
   </div>
          
		   
				
		   
		   


			
	</body>
	

	</html>
	<script>
	$(document).ready(function(){
    $("#clickHerebtn").click(function(){
		$("#clickHerebtn").hide();
        $("#loginformid").fadeIn("slow");
    });
	$("#loginBtn, #loginFormCloseBtn").click(function(){
		$("#loginformid").fadeOut("slow");      
		$("#clickHerebtn").show();		
    });
	$("#forgotpwd").click(function(){
		$("#loginformid").hide();
        $("#forgotpwdid").fadeIn("slow");
		
    });
	$("#submitBtn, #forgotFormCloseBtn").click(function(){
		$("#forgotpwdid").fadeOut("slow");      
		$("#clickHerebtn").show();		
    });

});
</script>	
