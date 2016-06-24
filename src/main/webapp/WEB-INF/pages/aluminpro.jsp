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
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/boot.css">
<link rel="stylesheet" href="css/footer.css">



<link rel="stylesheet" href="css/commonStyles.css">

<!--	<link rel="stylesheet" href="../css/childernsfamily.css"> -->


<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--		
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

<script>
	$(document).ready(function(){
    $("#forgotpwd").click(function(){
		$("#forgotpwd,#loginformid").hide();
        $("#forgotpwdid").fadeIn("slow");
		
    });
	$("#loginBtn, #loginFormCloseBtn").click(function(){
		$("#forgotpwdid").fadeOut("slow");      
		$("#clickHerebtn").show();		
    });
});
</script> -->

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


<script>
	jQuery(document).ready(function() {

		jQuery('.carousel[data-type="multi"] .item').each(function() {
			var next = jQuery(this).next();
			if (!next.length) {
				next = jQuery(this).siblings(':first');
			}
			next.children(':first-child').clone().appendTo(jQuery(this));

			for (var i = 0; i < 3; i++) {
				next = next.next();
				if (!next.length) {
					next = jQuery(this).siblings(':first');
				}
				next.children(':first-child').clone().appendTo($(this));
			}
		});

	});
</script>
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	/*margin: auto;*/
}
</style>
</head>
<body>

	<div class="container" id="carosel">
		<!-- <br> -->
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="../images/ema_whd_2016.jpg" alt="Chania">
				</div>

				<div class="item">
					<img src="../images/startseite_jenni.JPG" alt="Chania">
				</div>

			</div>


			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev" style="width: 43px;"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next" style="width: 43px;"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>

	<div class="col-md-12">

		<div class=" marTop10 panel panel-primary"
			style="border-radius: 0; margin-bottom: 0 !important;">
			<div class="panel-heading minHeight50">
				<div class="col-md-3"
					style="font-size: 18px; font-weight: bold; padding-left: 45px">
					Images</div>
				<div class="col-md-1"
					style="font-size: 16px; font-weight: bold; padding-top: 2px; padding-left: 20px;">
					Roll No</div>
				<div class="col-md-2"
					style="font-size: 18px; font-weight: bold; padding-left: 60px;">
					Name</div>
				<div class="col-md-2"
					style="font-size: 18px; font-weight: bold; padding-left: 70px;">
					Contact</div>
				<div class="col-md-2"
					style="font-size: 18px; font-weight: bold; padding-left: 80px;">
					Email</div>
				<div class="col-md-2"
					style="font-size: 18px; font-weight: bold; padding-left: 98px;">
					Lives in</div>
			</div>
			<div class="panel-body panel-group" id="accordion"">

				<!-- first div -->
				<div class="panel panel-sky">
					<div class="panel-heading panelHead-sky scrollToMyContent"
						data-parent="#accordion" data-toggle="collapse" href="#collapse1">
						<div class="col-md-3">
							<img src="images/bird1.png" class="imageSpace col-md-6" /> <img
								src="images/bird.jpg" class="imageSpace col-md-6" />
						</div>
						<div class="col-md-1" style="padding-top: 15px;">87EC101</div>
						<div class="col-md-3" style="padding-top: 15px; width: 22%">
							Gujjala Anjaneya vara prasad</div>
						<div class="col-md-1"
							style="padding-top: 15px; padding-left: 15px;">
							91+9878675687</div>
						<div class="col-md-2"
							style="padding-top: 15px; padding-left: 36px;">
							GujjalaAnjaneyavaraprasad@gmail.com</div>
						<div class="col-md-2"
							style="padding-top: 15px; padding-left: 150px;">Bangalore</div>



					</div>
					<div class="panel-body collapse panel-collapse collapse"
						id="collapse1">
						<div class="userDetailSpace col-md-12">
							<div class="panel panel-orange">
								<div class="panel-heading panelHead-orange">User Details</div>
								<div class="panel-body">
									<img class="col-md-4" src="images/bird1.png" /> <img
										class="col-md-4" src="images/bird.jpg" />
									<div class="col-md-4 userdetailsclass" id="userdetails-id">

										<!--	<table id="usertable">
									
										<tr class="font-style-heading1">
											
											<td>Gujjala Anjaneya vara prasad</td><br><br>
										</tr>
										<tr class="font-style-heading2">
											
											<td>userone@gmail.com</td>
										</tr>
										<tr class="font-style-heading3">
											
											<td>9979889798</td>
										</tr>
										
										
									</table> -->
										<p class="font-style-heading1">Gujjala Anjaneya vara
											prasad</p>
										<p class="font-style-heading2">userone@gmail.com</p>
										<p class="font-style-heading3">9979889798</p>
										<p class="font-style-heading4">mm-dd-yyyy</p>

									</div>
									<div class="col-md-12" id="userdescription">

										<p>EMA organizes various events/projects/conferences in
											different countries ranging from those focused on developing
											additional soft skills of our membership to those focused on
											raising awareness of various issues affecting our societies.
											Two examples of conferences organized through EMA are
											Geomundus and Humanities. By opting to become an EMA Learning
											Partner, your company or institution can take part in those
											leadership development conferences by doing a presentation,
											inspiring and empowering youth through training. EMA
											organizes various events/projects/conferences in different
											countries ranging from those focused on developing additional
											soft skills of our membership to those focused on raising
											awareness of various issues affecting our societies. Two
											examples of conferences organized through EMA are Geomundus
											and Humanities. By opting to become an EMA Learning Partner,
											your company or institution can take part in those leadership
											development conferences by doing a presentation, inspiring
											and empowering youth through training. EMA organizes various
											events/projects/conferences in different countries ranging
											from those focused on developing additional soft skills of
											our membership to those focused on raising awareness of
											various issues affecting our societies. Two examples of
											conferences organized through EMA are Geomundus and
											Humanities. By opting to become an EMA Learning Partner, your
											company or institution can take part in those leadership
											development conferences by doing a presentation, inspiring
											and empowering youth through training. EMA organizes various
											events/projects/conferences in different countries ranging
											from those focused on developing additional soft skills of
											our membership to those focused on raising awareness of
											various issues affecting our societies. Two examples of
											conferences organized through EMA are Geomundus and
											Humanities. By opting to become an EMA Learning Partner, your
											company or institution can take part in those leadership
											development conferences by doing a presentation, inspiring
											and empowering youth through training.</p>
									</div>

								</div>
							</div>

						</div>
						<div class="clear-fix"></div>
						<div class="spouseDetailSpace col-md-12">
							<div class="panel panel-voilet">
								<div class="panel-heading panelHead-voilet">Spouse Details</div>
								<div class="panel-body">
									<img class="col-md-4" src="images/bird.jpg" />
									<div class="col-md-8">
										<div class="col-md-12"></div>
										<div class="clear-fix"></div>
										<div class="col-md-12">

											<span class="font-style-heading1">Gujjala Anjaneya
												vara prasad</span><br>
											<br>

											<p>EMA organizes various events/projects/conferences in
												different countries ranging from those focused on developing
												additional soft skills of our membership to those focused on
												raising awareness of various issues affecting our societies.
												Two examples of conferences organized through EMA are
												Geomundus and Humanities. By opting to become an EMA
												Learning Partner, your company or institution can take part
												in those leadership development conferences by doing a
												presentation, inspiring and empowering youth through
												training.</p>


										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="clear-fix"></div>
						<div class="childrenDetailSpace col-md-12">
							<div class="panel panel-green">
								<div class="panel-heading panelHead-green">Children
									Details</div>
								<div class="panel-body">
									<img class="col-md-4" src="images/bird.jpg" />
									<div class="col-md-8">
										<div class="col-md-6"></div>
										<div class="col-md-6"></div>
										<div class="clear-fix"></div>
										<div class="col-md-12">

											<span class="font-style-heading1">Gujjala Anjaneya
												vara prasad</span><br>
											<br>

											<p>EMA organizes various events/projects/conferences in
												different countries ranging from those focused on developing
												additional soft skills of our membership to those focused on
												raising awareness of various issues affecting our societies.
												Two examples of conferences organized through EMA are
												Geomundus and Humanities. By opting to become an EMA
												Learning Partner, your company or institution can take part
												in those leadership development conferences by doing a
												presentation, inspiring and empowering youth through
												training.</p>


										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="clear-fix"></div>
						<div class="familygallerySpace col-md-12">
							<div class="panel panel-darkBlue">
								<div class="panel-heading panelHead-darkBlue">Family
									gallery</div>
								<div class="panel-body" id="familyid">
									<!--The main div for carousel-->

									<div class="carousel slide row" data-ride="carousel"
										data-type="multi" data-interval="2000" id="fruitscarousel">

										<div class="carousel-inner">
											<div class="item active">
												<div class="col-md-3 col-sm-4 col-xs-12">
													<a href="#"><img src="images/students.jpg"
														class="img-responsive"></a>
												</div>
											</div>
											<div class="item">
												<div class="col-md-3 col-sm-4 col-xs-12">
													<a href="#"><img src="images/students.jpg"
														class="img-responsive"></a>
												</div>
											</div>
											<div class="item">
												<div class="col-md-3 col-sm-4 col-xs-12">
													<a href="#"><img src="images/two.jpg"
														class="img-responsive"></a>
												</div>
											</div>
											<div class="item">
												<div class="col-md-3 col-sm-4 col-xs-12">
													<a href="#"><img src="images/two.jpg"
														class="img-responsive"></a>
												</div>
											</div>
											<div class="item active">
												<div class="col-md-3 col-sm-4 col-xs-12">
													<a href="#"><img src="images/students.jpg"
														class="img-responsive"></a>
												</div>
											</div>
											<!--        <div class="item">
            <div class="col-md-3 col-sm-4 col-xs-12"><a href="#"><img src="../images/two.jpg" class="img-responsive"></a></div>
        </div>
        <div class="item">
            <div class="col-md-3 col-sm-4 col-xs-12"><a href="#"><img src="../images/students.jpg" class="img-responsive"></a></div>
        </div> -->
										</div>

										<a class="left carousel-control" href="#fruitscarousel"
											data-slide="prev"><i
											class="glyphicon glyphicon-chevron-left"></i></a> <a
											class="right carousel-control" id="rightcor"
											href="#fruitscarousel" data-slide="next"><i
											class="glyphicon glyphicon-chevron-right"></i></a>

									</div>

									<!--The main div for carousel-->



								</div>
							</div>
						</div>

					</div>
				</div>
				<div class="clear-fix"></div>

				<!-- first div grid div ends-->
				<div class="panel panel-sky">
					<div class="panel-heading panelHead-sky scrollToMyContent"
						data-parent="#accordion" data-toggle="collapse" href="#collapse2">
						<div class="col-md-3">
							<img src="images/bird1.png" class="imageSpace col-md-6" /> <img
								src="images/bird.jpg" class="imageSpace col-md-6" />
						</div>
						<div class="col-md-1" style="padding-top: 15px;">87EC102</div>
						<div class="col-md-3" style="padding-top: 15px; width: 22%">
							Gujjala Anjaneya vara prasad</div>
						<div class="col-md-1"
							style="padding-top: 15px; padding-left: 15px;">
							91+9878675687</div>
						<div class="col-md-2"
							style="padding-top: 15px; padding-left: 36px;">
							GujjalaAnjaneyavaraprasad@gmail.com</div>
						<div class="col-md-2"
							style="padding-top: 15px; padding-left: 150px;">Bangalore</div>
					</div>
					<div class="panel-body collapse panel-collapse collapse"
						id="collapse2">
						<div class="userDetailSpace col-md-12">
							<div class="panel panel-orange">
								<div class="panel-heading panelHead-orange">User Details</div>
								<div class="panel-body">
									<img class="col-md-4" src="images/bird1.png" /> <img
										class="col-md-4" src="images/bird.jpg" />
									<div class="col-md-4 userdetailsclass" id="userdetails-id">

										<!--	<table id="usertable">
									
										<tr class="font-style-heading1">
											
											<td>Gujjala Anjaneya vara prasad</td><br><br>
										</tr>
										<tr class="font-style-heading2">
											
											<td>userone@gmail.com</td>
										</tr>
										<tr class="font-style-heading3">
											
											<td>9979889798</td>
										</tr>
										
										
									</table> -->
										<p class="font-style-heading1">Gujjala Anjaneya vara
											prasad</p>
										<p class="font-style-heading2">userone@gmail.com</p>
										<p class="font-style-heading3">9979889798</p>
										<p class="font-style-heading4">mm-dd-yyyy</p>

									</div>
									<div class="col-md-12" id="userdescription">

										<p>EMA organizes various events/projects/conferences in
											different countries ranging from those focused on developing
											additional soft skills of our membership to those focused on
											raising awareness of various issues affecting our societies.
											Two examples of conferences organized through EMA are
											Geomundus and Humanities. By opting to become an EMA Learning
											Partner, your company or institution can take part in those
											leadership development conferences by doing a presentation,
											inspiring and empowering youth through training. EMA
											organizes various events/projects/conferences in different
											countries ranging from those focused on developing additional
											soft skills of our membership to those focused on raising
											awareness of various issues affecting our societies. Two
											examples of conferences organized through EMA are Geomundus
											and Humanities. By opting to become an EMA Learning Partner,
											your company or institution can take part in those leadership
											development conferences by doing a presentation, inspiring
											and empowering youth through training. EMA organizes various
											events/projects/conferences in different countries ranging
											from those focused on developing additional soft skills of
											our membership to those focused on raising awareness of
											various issues affecting our societies. Two examples of
											conferences organized through EMA are Geomundus and
											Humanities. By opting to become an EMA Learning Partner, your
											company or institution can take part in those leadership
											development conferences by doing a presentation, inspiring
											and empowering youth through training. EMA organizes various
											events/projects/conferences in different countries ranging
											from those focused on developing additional soft skills of
											our membership to those focused on raising awareness of
											various issues affecting our societies. Two examples of
											conferences organized through EMA are Geomundus and
											Humanities. By opting to become an EMA Learning Partner, your
											company or institution can take part in those leadership
											development conferences by doing a presentation, inspiring
											and empowering youth through training.</p>
									</div>

								</div>
							</div>

						</div>
						<div class="clear-fix"></div>
						<div class="spouseDetailSpace col-md-12">
							<div class="panel panel-voilet">
								<div class="panel-heading panelHead-voilet">Spouse Details</div>
								<div class="panel-body">
									<img class="col-md-4" src="images/bird.jpg" />
									<div class="col-md-8">
										<div class="col-md-12"></div>
										<div class="clear-fix"></div>
										<div class="col-md-12">

											<span class="font-style-heading1">Gujjala Anjaneya
												vara prasad</span><br>
											<br>

											<p>EMA organizes various events/projects/conferences in
												different countries ranging from those focused on developing
												additional soft skills of our membership to those focused on
												raising awareness of various issues affecting our societies.
												Two examples of conferences organized through EMA are
												Geomundus and Humanities. By opting to become an EMA
												Learning Partner, your company or institution can take part
												in those leadership development conferences by doing a
												presentation, inspiring and empowering youth through
												training.</p>


										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="clear-fix"></div>
						<div class="childrenDetailSpace col-md-12">
							<div class="panel panel-green">
								<div class="panel-heading panelHead-green">Children
									Details</div>
								<div class="panel-body">
									<img class="col-md-4" src="images/bird.jpg" />
									<div class="col-md-8">
										<div class="col-md-6"></div>
										<div class="col-md-6"></div>
										<div class="clear-fix"></div>
										<div class="col-md-12">

											<span class="font-style-heading1">Gujjala Anjaneya
												vara prasad</span><br>
											<br>

											<p>EMA organizes various events/projects/conferences in
												different countries ranging from those focused on developing
												additional soft skills of our membership to those focused on
												raising awareness of various issues affecting our societies.
												Two examples of conferences organized through EMA are
												Geomundus and Humanities. By opting to become an EMA
												Learning Partner, your company or institution can take part
												in those leadership development conferences by doing a
												presentation, inspiring and empowering youth through
												training.</p>


										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="clear-fix"></div>
						<div class="familygallerySpace col-md-12">
							<div class="panel panel-darkBlue">
								<div class="panel-heading panelHead-darkBlue">Family
									gallery</div>
								<div class="panel-body" id="familyid">
									<!--The main div for carousel-->

									<div class="carousel slide row" data-ride="carousel"
										data-type="multi" data-interval="2000" id="fruitscarousel">

										<div class="carousel-inner">
											<div class="item active">
												<div class="col-md-3 col-sm-4 col-xs-12">
													<a href="#"><img src="images/students.jpg"
														class="img-responsive"></a>
												</div>
											</div>
											<div class="item">
												<div class="col-md-3 col-sm-4 col-xs-12">
													<a href="#"><img src="images/students.jpg"
														class="img-responsive"></a>
												</div>
											</div>
											<div class="item">
												<div class="col-md-3 col-sm-4 col-xs-12">
													<a href="#"><img src="images/two.jpg"
														class="img-responsive"></a>
												</div>
											</div>
											<div class="item">
												<div class="col-md-3 col-sm-4 col-xs-12">
													<a href="#"><img src="images/two.jpg"
														class="img-responsive"></a>
												</div>
											</div>
											<div class="item active">
												<div class="col-md-3 col-sm-4 col-xs-12">
													<a href="#"><img src="images/students.jpg"
														class="img-responsive"></a>
												</div>
											</div>
											<!--        <div class="item">
            <div class="col-md-3 col-sm-4 col-xs-12"><a href="#"><img src="../images/two.jpg" class="img-responsive"></a></div>
        </div>
        <div class="item">
            <div class="col-md-3 col-sm-4 col-xs-12"><a href="#"><img src="../images/students.jpg" class="img-responsive"></a></div>
        </div> -->
										</div>

										<a class="left carousel-control" href="#fruitscarousel"
											data-slide="prev"><i
											class="glyphicon glyphicon-chevron-left"></i></a> <a
											class="right carousel-control" id="rightcor"
											href="#fruitscarousel" data-slide="next"><i
											class="glyphicon glyphicon-chevron-right"></i></a>

									</div>

									<!--The main div for carousel-->



								</div>
							</div>
						</div>

					</div>
				</div>
				<div class="clear-fix"></div>

				<!--second div grid ends -->

				<div class="panel panel-sky">
					<div class="panel-heading panelHead-sky scrollToMyContent"
						data-parent="#accordion" data-toggle="collapse" href="#collapse3">
						<div class="col-md-3">
							<img src="images/bird1.png" class="imageSpace col-md-6" /> <img
								src="images/bird.jpg" class="imageSpace col-md-6" />
						</div>
						<div class="col-md-1" style="padding-top: 15px;">87EC103</div>
						<div class="col-md-3" style="padding-top: 15px; width: 22%">
							Gujjala Anjaneya vara prasad</div>
						<div class="col-md-1"
							style="padding-top: 15px; padding-left: 15px;">
							91+9878675687</div>
						<div class="col-md-2"
							style="padding-top: 15px; padding-left: 36px;">
							GujjalaAnjaneyavaraprasad@gmail.com</div>
						<div class="col-md-2"
							style="padding-top: 15px; padding-left: 150px;">Bangalore</div>
					</div>
					<div class="panel-body collapse panel-collapse collapse"
						id="collapse3">
						<div class="userDetailSpace col-md-12">
							<div class="panel panel-orange">
								<div class="panel-heading panelHead-orange">User Details</div>
								<div class="panel-body">
									<img class="col-md-4" src="images/bird1.png" /> <img
										class="col-md-4" src="images/bird.jpg" />
									<div class="col-md-4 userdetailsclass" id="userdetails-id">

										<!--	<table id="usertable">
									
										<tr class="font-style-heading1">
											
											<td>Gujjala Anjaneya vara prasad</td><br><br>
										</tr>
										<tr class="font-style-heading2">
											
											<td>userone@gmail.com</td>
										</tr>
										<tr class="font-style-heading3">
											
											<td>9979889798</td>
										</tr>
										
										
									</table> -->
										<p class="font-style-heading1">Gujjala Anjaneya vara
											prasad</p>
										<p class="font-style-heading2">userone@gmail.com</p>
										<p class="font-style-heading3">9979889798</p>
										<p class="font-style-heading4">mm-dd-yyyy</p>

									</div>
									<div class="col-md-12" id="userdescription">

										<p>EMA organizes various events/projects/conferences in
											different countries ranging from those focused on developing
											additional soft skills of our membership to those focused on
											raising awareness of various issues affecting our societies.
											Two examples of conferences organized through EMA are
											Geomundus and Humanities. By opting to become an EMA Learning
											Partner, your company or institution can take part in those
											leadership development conferences by doing a presentation,
											inspiring and empowering youth through training. EMA
											organizes various events/projects/conferences in different
											countries ranging from those focused on developing additional
											soft skills of our membership to those focused on raising
											awareness of various issues affecting our societies. Two
											examples of conferences organized through EMA are Geomundus
											and Humanities. By opting to become an EMA Learning Partner,
											your company or institution can take part in those leadership
											development conferences by doing a presentation, inspiring
											and empowering youth through training. EMA organizes various
											events/projects/conferences in different countries ranging
											from those focused on developing additional soft skills of
											our membership to those focused on raising awareness of
											various issues affecting our societies. Two examples of
											conferences organized through EMA are Geomundus and
											Humanities. By opting to become an EMA Learning Partner, your
											company or institution can take part in those leadership
											development conferences by doing a presentation, inspiring
											and empowering youth through training. EMA organizes various
											events/projects/conferences in different countries ranging
											from those focused on developing additional soft skills of
											our membership to those focused on raising awareness of
											various issues affecting our societies. Two examples of
											conferences organized through EMA are Geomundus and
											Humanities. By opting to become an EMA Learning Partner, your
											company or institution can take part in those leadership
											development conferences by doing a presentation, inspiring
											and empowering youth through training.</p>
									</div>

								</div>
							</div>

						</div>
						<div class="clear-fix"></div>
						<div class="spouseDetailSpace col-md-12">
							<div class="panel panel-voilet">
								<div class="panel-heading panelHead-voilet">Spouse Details</div>
								<div class="panel-body">
									<img class="col-md-4" src="images/bird.jpg" />
									<div class="col-md-8">
										<div class="col-md-12"></div>
										<div class="clear-fix"></div>
										<div class="col-md-12">

											<span class="font-style-heading1">Gujjala Anjaneya
												vara prasad</span><br>
											<br>

											<p>EMA organizes various events/projects/conferences in
												different countries ranging from those focused on developing
												additional soft skills of our membership to those focused on
												raising awareness of various issues affecting our societies.
												Two examples of conferences organized through EMA are
												Geomundus and Humanities. By opting to become an EMA
												Learning Partner, your company or institution can take part
												in those leadership development conferences by doing a
												presentation, inspiring and empowering youth through
												training.</p>


										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="clear-fix"></div>
						<div class="childrenDetailSpace col-md-12">
							<div class="panel panel-green">
								<div class="panel-heading panelHead-green">Children
									Details</div>
								<div class="panel-body">
									<img class="col-md-4" src="images/bird.jpg" />
									<div class="col-md-8">
										<div class="col-md-6"></div>
										<div class="col-md-6"></div>
										<div class="clear-fix"></div>
										<div class="col-md-12">

											<span class="font-style-heading1">Gujjala Anjaneya
												vara prasad</span><br>
											<br>

											<p>EMA organizes various events/projects/conferences in
												different countries ranging from those focused on developing
												additional soft skills of our membership to those focused on
												raising awareness of various issues affecting our societies.
												Two examples of conferences organized through EMA are
												Geomundus and Humanities. By opting to become an EMA
												Learning Partner, your company or institution can take part
												in those leadership development conferences by doing a
												presentation, inspiring and empowering youth through
												training.</p>


										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="clear-fix"></div>
						<div class="familygallerySpace col-md-12">
							<div class="panel panel-darkBlue">
								<div class="panel-heading panelHead-darkBlue">Family
									gallery</div>
								<div class="panel-body" id="familyid">
									<!--The main div for carousel-->

									<div class="carousel slide row" data-ride="carousel"
										data-type="multi" data-interval="2000" id="fruitscarousel">

										<div class="carousel-inner">
											<div class="item active">
												<div class="col-md-3 col-sm-4 col-xs-12">
													<a href="#"><img src="images/students.jpg"
														class="img-responsive"></a>
												</div>
											</div>
											<div class="item">
												<div class="col-md-3 col-sm-4 col-xs-12">
													<a href="#"><img src="images/students.jpg"
														class="img-responsive"></a>
												</div>
											</div>
											<div class="item">
												<div class="col-md-3 col-sm-4 col-xs-12">
													<a href="#"><img src="images/two.jpg"
														class="img-responsive"></a>
												</div>
											</div>
											<div class="item">
												<div class="col-md-3 col-sm-4 col-xs-12">
													<a href="#"><img src="images/two.jpg"
														class="img-responsive"></a>
												</div>
											</div>
											<div class="item active">
												<div class="col-md-3 col-sm-4 col-xs-12">
													<a href="#"><img src="images/students.jpg"
														class="img-responsive"></a>
												</div>
											</div>
											<!--        <div class="item">
            <div class="col-md-3 col-sm-4 col-xs-12"><a href="#"><img src="images/two.jpg" class="img-responsive"></a></div>
        </div>
        <div class="item">
            <div class="col-md-3 col-sm-4 col-xs-12"><a href="#"><img src="images/students.jpg" class="img-responsive"></a></div>
        </div> -->
										</div>

										<a class="left carousel-control" href="#fruitscarousel"
											data-slide="prev"><i
											class="glyphicon glyphicon-chevron-left"></i></a> <a
											class="right carousel-control" id="rightcor"
											href="#fruitscarousel" data-slide="next"><i
											class="glyphicon glyphicon-chevron-right"></i></a>

									</div>

									<!--The main div for carousel-->



								</div>
							</div>
						</div>

					</div>
				</div>
				<div class="clear-fix"></div>









				<!-- third grid div ends -->

				<div class="panel panel-sky">
					<div class="panel-heading panelHead-sky scrollToMyContent"
						data-parent="#accordion" data-toggle="collapse" href="#collapse4">
						<div class="col-md-3">
							<img src="images/bird1.png" class="imageSpace col-md-6" /> <img
								src="images/bird.jpg" class="imageSpace col-md-6" />
						</div>
						<div class="col-md-1" style="padding-top: 15px;">87EC104</div>
						<div class="col-md-3" style="padding-top: 15px; width: 22%">
							Gujjala Anjaneya vara prasad</div>
						<div class="col-md-1"
							style="padding-top: 15px; padding-left: 15px;">
							91+9878675687</div>
						<div class="col-md-2"
							style="padding-top: 15px; padding-left: 36px;">
							GujjalaAnjaneyavaraprasad@gmail.com</div>
						<div class="col-md-2"
							style="padding-top: 15px; padding-left: 150px;">Bangalore</div>
					</div>
					<div class="panel-body collapse panel-collapse collapse"
						id="collapse4">
						<div class="userDetailSpace col-md-12">
							<div class="panel panel-orange">
								<div class="panel-heading panelHead-orange">User Details</div>
								<div class="panel-body">
									<img class="col-md-4" src="images/bird1.png" /> <img
										class="col-md-4" src="images/bird.jpg" />
									<div class="col-md-4 userdetailsclass" id="userdetails-id">

										<!--	<table id="usertable">
									
										<tr class="font-style-heading1">
											
											<td>Gujjala Anjaneya vara prasad</td><br><br>
										</tr>
										<tr class="font-style-heading2">
											
											<td>userone@gmail.com</td>
										</tr>
										<tr class="font-style-heading3">
											
											<td>9979889798</td>
										</tr>
										
										
									</table> -->
										<p class="font-style-heading1">Gujjala Anjaneya vara
											prasad</p>
										<p class="font-style-heading2">userone@gmail.com</p>
										<p class="font-style-heading3">9979889798</p>
										<p class="font-style-heading4">mm-dd-yyyy</p>

									</div>
									<div class="col-md-12" id="userdescription">

										<p>EMA organizes various events/projects/conferences in
											different countries ranging from those focused on developing
											additional soft skills of our membership to those focused on
											raising awareness of various issues affecting our societies.
											Two examples of conferences organized through EMA are
											Geomundus and Humanities. By opting to become an EMA Learning
											Partner, your company or institution can take part in those
											leadership development conferences by doing a presentation,
											inspiring and empowering youth through training. EMA
											organizes various events/projects/conferences in different
											countries ranging from those focused on developing additional
											soft skills of our membership to those focused on raising
											awareness of various issues affecting our societies. Two
											examples of conferences organized through EMA are Geomundus
											and Humanities. By opting to become an EMA Learning Partner,
											your company or institution can take part in those leadership
											development conferences by doing a presentation, inspiring
											and empowering youth through training. EMA organizes various
											events/projects/conferences in different countries ranging
											from those focused on developing additional soft skills of
											our membership to those focused on raising awareness of
											various issues affecting our societies. Two examples of
											conferences organized through EMA are Geomundus and
											Humanities. By opting to become an EMA Learning Partner, your
											company or institution can take part in those leadership
											development conferences by doing a presentation, inspiring
											and empowering youth through training. EMA organizes various
											events/projects/conferences in different countries ranging
											from those focused on developing additional soft skills of
											our membership to those focused on raising awareness of
											various issues affecting our societies. Two examples of
											conferences organized through EMA are Geomundus and
											Humanities. By opting to become an EMA Learning Partner, your
											company or institution can take part in those leadership
											development conferences by doing a presentation, inspiring
											and empowering youth through training.</p>
									</div>

								</div>
							</div>

						</div>
						<div class="clear-fix"></div>
						<div class="spouseDetailSpace col-md-12">
							<div class="panel panel-voilet">
								<div class="panel-heading panelHead-voilet">Spouse Details</div>
								<div class="panel-body">
									<img class="col-md-4" src="images/bird.jpg" />
									<div class="col-md-8">
										<div class="col-md-12"></div>
										<div class="clear-fix"></div>
										<div class="col-md-12">

											<span class="font-style-heading1">Gujjala Anjaneya
												vara prasad</span><br>
											<br>

											<p>EMA organizes various events/projects/conferences in
												different countries ranging from those focused on developing
												additional soft skills of our membership to those focused on
												raising awareness of various issues affecting our societies.
												Two examples of conferences organized through EMA are
												Geomundus and Humanities. By opting to become an EMA
												Learning Partner, your company or institution can take part
												in those leadership development conferences by doing a
												presentation, inspiring and empowering youth through
												training.</p>


										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="clear-fix"></div>
						<div class="childrenDetailSpace col-md-12">
							<div class="panel panel-green">
								<div class="panel-heading panelHead-green">Children
									Details</div>
								<div class="panel-body">
									<img class="col-md-4" src="images/bird.jpg" />
									<div class="col-md-8">
										<div class="col-md-6"></div>
										<div class="col-md-6"></div>
										<div class="clear-fix"></div>
										<div class="col-md-12">

											<span class="font-style-heading1">Gujjala Anjaneya
												vara prasad</span><br>
											<br>

											<p>EMA organizes various events/projects/conferences in
												different countries ranging from those focused on developing
												additional soft skills of our membership to those focused on
												raising awareness of various issues affecting our societies.
												Two examples of conferences organized through EMA are
												Geomundus and Humanities. By opting to become an EMA
												Learning Partner, your company or institution can take part
												in those leadership development conferences by doing a
												presentation, inspiring and empowering youth through
												training.</p>


										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="clear-fix"></div>
						<div class="familygallerySpace col-md-12">
							<div class="panel panel-darkBlue">
								<div class="panel-heading panelHead-darkBlue">Family
									gallery</div>
								<div class="panel-body" id="familyid">
									<!--The main div for carousel-->

									<div class="carousel slide row" data-ride="carousel"
										data-type="multi" data-interval="2000" id="fruitscarousel">

										<div class="carousel-inner">
											<div class="item active">
												<div class="col-md-3 col-sm-4 col-xs-12">
													<a href="#"><img src="images/students.jpg"
														class="img-responsive"></a>
												</div>
											</div>
											<div class="item">
												<div class="col-md-3 col-sm-4 col-xs-12">
													<a href="#"><img src="images/students.jpg"
														class="img-responsive"></a>
												</div>
											</div>
											<div class="item">
												<div class="col-md-3 col-sm-4 col-xs-12">
													<a href="#"><img src="images/two.jpg"
														class="img-responsive"></a>
												</div>
											</div>
											<div class="item">
												<div class="col-md-3 col-sm-4 col-xs-12">
													<a href="#"><img src="images/two.jpg"
														class="img-responsive"></a>
												</div>
											</div>
											<div class="item active">
												<div class="col-md-3 col-sm-4 col-xs-12">
													<a href="#"><img src="images/students.jpg"
														class="img-responsive"></a>
												</div>
											</div>
											<!--        <div class="item">
            <div class="col-md-3 col-sm-4 col-xs-12"><a href="#"><img src="images/two.jpg" class="img-responsive"></a></div>
        </div>
        <div class="item">
            <div class="col-md-3 col-sm-4 col-xs-12"><a href="#"><img src="images/students.jpg" class="img-responsive"></a></div>
        </div> -->
										</div>

										<a class="left carousel-control" href="#fruitscarousel"
											data-slide="prev"><i
											class="glyphicon glyphicon-chevron-left"></i></a> <a
											class="right carousel-control" id="rightcor"
											href="#fruitscarousel" data-slide="next"><i
											class="glyphicon glyphicon-chevron-right"></i></a>

									</div>

									<!--The main div for carousel-->



								</div>
							</div>
						</div>

					</div>
				</div>
				<div class="clear-fix"></div>
				<!-- fourth grid div ends -->
			</div>
		</div>
	</div>
</body>
<script>
	$(document).ready(function() {
		$('.scrollToMyContent').click(function(event) {

			setTimeout(function() {
				$("html, body").animate({
					scrollTop : $(event.currentTarget).offset().top
				}, 200);
			}, 400);

		});
	});
</script>
</html>
