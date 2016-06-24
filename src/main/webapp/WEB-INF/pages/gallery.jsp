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
<title>SOME APPS</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylsheet" href="../css/font-awesome.min.css">
<link rel="stylesheet" href="../css/gallery.css">
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">


<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</head>
<body>
	<!-- header ends -->

	<div class="col-md-12">

		<div class=" marTop10 panel panel-primary"
			style="border-radius: 0; margin-bottom: 0 !important;">
			<div class="panel-heading minHeight50"
				style="font-size: 20px; align: center; text-align: center; background-color: #ff6600; border-color: #ff6600">
				Gallery</div>
			<div class="panel-body">
				<div class="panel panel-sky">

					<div class="row">
						<div class="col-sm-offset-4 col-sm-4" id="imagevideo"
							style="padding: 7px;">
							<table class="table table-bordered table-striped">
								<tr>
									<th class=" center" style="text-align: center;"><button
											style="text-decoration: none" id="gallery-images">Images</button></th>
									<th class=" center" style="text-align: center;"><button
											style="text-decoration: none" id="gallery-videos">Videos</button></th>
								</tr>
							</table>
						</div>
					</div>

					<div id="gallery-images-div" style="padding: 7px;">

						<div class="row">
							<div class="col-md-2">
								<img src="../images/5.jpg" class="img-thumbnail nail">

							</div>

							<div class="col-md-2">
								<img src="../images/7.jpg" class="img-thumbnail nail1">
							</div>

							<div class="col-md-2">
								<img src="../images/5.jpg" class="img-thumbnail nail2">
							</div>
							<div class="col-md-2">
								<img src="../images/5.jpg" class="img-thumbnail nail2">
							</div>

							<div class="col-md-2">
								<img src="../images/6.jpg" class="img-thumbnail nail3">
							</div>


							<div class="col-md-2">
								<img src="../images/7.jpg" class="img-thumbnail nail1">
							</div>


							<div class="col-md-2">
								<img src="../images/6.jpg" class="img-thumbnail nail5">
							</div>


							<div class="col-md-2">
								<img src="../images/4.jpg" class="img-thumbnail nail5">
							</div>




						</div>



					</div>


					<div id="gallery-videos-div" style="display: none; padding: 7px;">

						<div class="row">
							<div class="col-md-2">
								<img src="../images/5.jpg" class="img-thumbnail nail">

							</div>

							<div class="col-md-2">
								<img src="../images/7.jpg" class="img-thumbnail nail1">
							</div>

							<div class="col-md-2">
								<img src="../images/5.jpg" class="img-thumbnail nail2">
							</div>
							<div class="col-md-2">
								<img src="../images/5.jpg" class="img-thumbnail nail2">
							</div>

							<div class="col-md-2">
								<img src="../images/6.jpg" class="img-thumbnail nail3">
							</div>


							<div class="col-md-2">
								<img src="../images/7.jpg" class="img-thumbnail nail1">
							</div>


							<div class="col-md-2">
								<img src="../images/6.jpg" class="img-thumbnail nail5">
							</div>


							<div class="col-md-2">
								<img src="../images/4.jpg" class="img-thumbnail nail5">
							</div>

							<div class="col-md-2">
								<img src="../images/6.jpg" class="img-thumbnail nail5">
							</div>

							<div class="col-md-2">
								<img src="../images/5.jpg" class="img-thumbnail nail2">
							</div>

							<div class="col-md-2">
								<img src="../images/5.jpg" class="img-thumbnail nail2">
							</div>





						</div>





					</div>


				</div>
			</div>
		</div>
	</div>




</body>

<script>
	$(document).ready(function() {
		$("#gallery-images").click(function() {
			$("#gallery-images-div").show();
			$("#gallery-videos-div").hide();

		});
		$("#gallery-videos").click(function() {
			$("#gallery-videos-div").show();
			$("#gallery-images-div").hide();
		});
	});
</script>
</html>
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
