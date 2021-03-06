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
<meta charset="utf-8" />
<title>Registration form</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="css/font-awesome.min.css" />

<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/Registration.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/commonStyles.css">

<link rel="stylesheet" href="css/datepicker.css">


<script src="js/bootstrap-datepicker.js"></script>

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

<script type="text/javascript">
	// When the document is ready
	$(document).ready(function() {

		$('#example1').datepicker({
			format : "dd/mm/yyyy"
		});

	});
</script>



<style>
.stepwizard-step p {
	margin-top: 10px;
}

.stepwizard-row {
	display: table-row;
}

.stepwizard {
	display: table;
	width: 100%;
	position: relative;
}

.stepwizard-step button[disabled] {
	opacity: 1 !important;
	filter: alpha(opacity = 100) !important;
}

.stepwizard-row:before {
	top: 14px;
	bottom: 0;
	position: absolute;
	content: " ";
	width: 100%;
	height: 1px;
	background-color: #ccc;
	z-order: 0;
}

.stepwizard-step {
	display: table-cell;
	text-align: center;
	position: relative;
}

.btn-circle {
	width: 30px;
	height: 30px;
	text-align: center;
	padding: 6px 0;
	font-size: 12px;
	line-height: 1.428571429;
	border-radius: 15px;
}
</style>


<!--	<script>
		$(document).ready(function(){
      var date_input=$('input[name="date"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
	</script>-->
<script>
	$(document)
			.ready(
					function() {

						var i = 1;
						$("#add_row")
								.click(
										function() {
											$('#addr' + i)
													.html(
															"<td><p class='checkboxpadding'><input  name='select"+i+"' type='checkbox' value='select' placeholder='select'  class='form-control input-md checkboxfieldwidth'></p></td><td><img src='images/bird1.png' name='image' class='imageSpace photofieldwidth'/></td><td><p class='columnpadding'><input  name='name"+i+"' type='text' placeholder='Name'  class='form-control input-md'></p></td><td><p class='columnpadding'><input  name='about"+i+"' type='text' placeholder='About'  class='form-control input-md'></p></td><td><p class='columnpadding'><input  name='photo"+i+"' type='file' placeholder='photo'  class='form-control input-md'></p></td> ");

											$('#tab_logic').append(
													'<tr id="addr' + (i + 1)
															+ '"></tr>');
											i++;
										});
						$("#delete_row").click(function() {
							if (i > 1) {
								$("#addr" + (i - 1)).html('');
								i--;
							}
						});

						var z = 1;
						$(".container #add_row_family_photos")
								.click(
										function() {
											$('#family_photos' + z)
													.html(
															"<td><p class='checkboxpadding'><input  name='select"+i+"' type='checkbox' value='select' placeholder='select'  class='form-control input-md checkboxfieldwidth'></p></td><td><img src='images/bird1.png' name='image' class='imageSpace photofieldwidth'/></td><td><p class='columnpadding'><input name='photo"+z+"' type='file' placeholder='Photo' class='form-control input-md photouploadfieldwidth'/></p></td><td><p class='columnpadding'><input  name='description"+z+"' type='text' placeholder='Description'  class='form-control input-md'></p></td><td><p class='privacypadding'><input  name='privacy"+z+"' type='checkbox' placeholder='privacy'  class='form-control input-md privacy-field-width'></p></td>");
											$('#tab_logic_family_photos')
													.append(
															'<tr id="family_photos'
																	+ (z + 1)
																	+ '"></tr>');
											z++;
										});
						$("#delete_row_family_photos").click(function() {
							if (z > 1) {
								$("#family_photos" + (z - 1)).html('');
								z--;
							}
						});

						var navListItems = $('div.setup-panel div a'), allWells = $('.setup-content'), allNextBtn = $('.nextBtn');

						allWells.hide();

						navListItems
								.click(function(e) {
									e.preventDefault();
									var $target = $($(this).attr('href')), $item = $(this);

									if (!$item.hasClass('disabled')) {
										navListItems.removeClass('btn-primary')
												.addClass('btn-default');
										$item.addClass('btn-primary');
										allWells.hide();
										$target.show();
										$target.find('input:eq(0)').focus();
									}
								});

						allNextBtn
								.click(function() {
									var curStep = $(this).closest(
											".setup-content"), curStepBtn = curStep
											.attr("id"), nextStepWizard = $(
											'div.setup-panel div a[href="#'
													+ curStepBtn + '"]')
											.parent().next().children("a"), curInputs = curStep
											.find("input[type='text'],input[type='url']"), isValid = true;

									$(".form-group").removeClass("has-error");
									for (var i = 0; i < curInputs.length; i++) {
										if (!curInputs[i].validity.valid) {
											isValid = false;
											$(curInputs[i]).closest(
													".form-group").addClass(
													"has-error");
										}
									}

									if (isValid)
										nextStepWizard.removeAttr('disabled')
												.trigger('click');
								});

						$('div.setup-panel div a.btn-primary').trigger('click');

						//custom code by @naresh for file input sep

						var fileInput = document.getElementById('sep_json');
						var fileDisplayArea = document
								.getElementById('sep_jsondisplay');
						var fileInput1 = document.getElementById('action_json');
						var fileDisplayArea1 = document
								.getElementById('action_jsondisplay');

						fileInput
								.addEventListener(
										'change',
										function(e) {
											var file = fileInput.files[0];
											var textType = /text.*/;

											if (file.type.match(textType)) {
												var reader = new FileReader();

												reader.onload = function(e) {
													var res = reader.result;
													function isJSON(something) {
														if (typeof something != 'string')
															something = JSON
																	.stringify(something);

														try {
															JSON
																	.parse(something);
															return true;
														} catch (e) {
															return false;
														}
													}
													if (isJSON(res)) {
														fileDisplayArea.innerText = JSON
																.stringify(res);
													} else {
														fileDisplayArea.innerText = "File content is not JSON"
													}
												}

												reader.readAsText(file);
											} else {
												fileDisplayArea.innerText = "File not supported!"
											}
										});
						fileInput1
								.addEventListener(
										'change',
										function(e) {
											var file = fileInput1.files[0];
											var textType = /text.*/;

											if (file.type.match(textType)) {
												var reader = new FileReader();

												reader.onload = function(e) {
													var res = reader.result;
													function isJSON(something) {
														if (typeof something != 'string')
															something = JSON
																	.stringify(something);

														try {
															JSON
																	.parse(something);
															return true;
														} catch (e) {
															return false;
														}
													}
													if (isJSON(res)) {
														fileDisplayArea1.innerText = JSON
																.stringify(res);
													} else {
														fileDisplayArea1.innerText = "File content is not JSON"
													}
												}

												reader.readAsText(file);
											} else {
												fileDisplayArea1.innerText = "File not supported!"
											}
										});

						//@naresh action dynamic childs
						var next = 0;
						$("#add-more")
								.click(
										function(e) {
											e.preventDefault();
											var addto = "#field" + next;
											var addRemove = "#field" + (next);
											next = next + 1;
											var newIn = ' <div id="field'+ next +'" name="field'+ next +'"><!-- Text input--><div class="form-group"> <label class="col-md-4 control-label" for="action_id">Action Id</label> <div class="col-md-5"> <input id="action_id" name="action_id" type="text" placeholder="" class="form-control input-md"> </div></div><br><br><!-- Text input--><div class="form-group"> <label class="col-md-4 control-label" for="action_name">Action Name</label> <div class="col-md-5"> <input id="action_name" name="action_name" type="text" placeholder="" class="form-control input-md"> </div></div><br><br><!-- File Button --> <div class="form-group"> <label class="col-md-4 control-label" for="action_json">Action JSON File</label> <div class="col-md-4"> <input id="action_json" name="action_json" class="input-file" type="file"> </div></div></div>';
											var newInput = $(newIn);
											var removeBtn = '<button id="remove'
													+ (next - 1)
													+ '" class="btn btn-danger remove-me" >Remove</button></div></div><div id="field">';
											var removeButton = $(removeBtn);
											$(addto).after(newInput);
											$(addRemove).after(removeButton);
											$("#field" + next)
													.attr(
															'data-source',
															$(addto)
																	.attr(
																			'data-source'));
											$("#count").val(next);

											$('.remove-me')
													.click(
															function(e) {
																e
																		.preventDefault();
																var fieldNum = this.id
																		.charAt(this.id.length - 1);
																var fieldID = "#field"
																		+ fieldNum;
																$(this)
																		.remove();
																$(fieldID)
																		.remove();
															});
										});

					});
</script>

</head>
<body>
	<div class="container" id="registrationbody">
<div class="stepwizard">
    <div class="stepwizard-row setup-panel">
        <div class="stepwizard-step">
            <a href="#step-1" type="button" class="btn btn-circle btn-default btn-primary">1</a>
            <p>Your Details</p>
        </div>
        <div class="stepwizard-step">
            <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
            <p>Family Details</p>
        </div>
      
    </div>
</div>
<div class="col-md-12 marLeft7 marginTop15">
    <div class="row setup-content" id="step-1" style="display: block;">
<div class="panel panel-orange">
      <div class="panel-heading panelHead-orange">
      Your Details
      </div>
      <div class="panel-body">
      
<form role="form">
    
        <div class="col-xs-12 col-xs-6" id="your-details-div">
            <div class="col-md-12 paddingleftzeroxs">
                <p class="text-left" id="yourdetails"> Your Details</p>
                                <!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="stack_id">Title</label>
  <div class="col-md-5">
    <select id="stack_id" name="stack_id" class="form-control">
      <option value="1">M/S.</option>
      <option value="2">Mr.</option>
      <option value="3">Mrs.</option>
      <option value="4">Other.</option>
    </select>
  </div>
  
 
</div>
<br>
<br>
                <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="service_name">Name</label>  
  <div class="col-md-5">
  <input id="service_name" name="service_name" type="text" placeholder="Name" class="form-control input-md">
    
  </div>
</div>
<br>
<br>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="service_architecture">Email</label>  
  <div class="col-md-5">
  <input id="service_architecture" name="service_architecture" type="text" placeholder="Email" class="form-control input-md">
    
  </div>
</div>
<br>
<br>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="fn">Phone Number</label>  
  <div class="col-md-5">
  <input id="fn" name="fn" type="text" placeholder="Phone Number" class="form-control input-md">
    
  </div>
</div>
<br>
<br>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="ln">Secondary Number</label>  
  <div class="col-md-5">
  <input id="ln" name="ln" type="text" placeholder="Secondary Number" class="form-control input-md">
    
  </div>
</div>
<br>
<br>
<!-- Text input-->
<div class="form-group">
	<label class="col-md-4 control-label" for="ln">Date of Birth</label>
	<div class="col-md-5">
	<input id="example1" name="ln" type="text" placeholder="dd/mm/yyy" class="form-control input-md">
	</div>
	</div>
<!-- <div class="container">
            <div class="hero-unit">
                <input  type="text" placeholder="click to show datepicker"  id="example1">
            </div>
 </div> -->
<br>
<br>
<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" for="cmpny">Company</label>  
  <div class="col-md-5">
  <input id="cmpny" name="cmpny" type="text" placeholder="company" class="form-control input-md">
    
  </div>
</div>
<br>
<br>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="add1">Address 1</label>  
  <div class="col-md-5">
  <input id="add1" name="add1" type="text" placeholder="Address 1" class="form-control input-md">
    
  </div>
</div>
<br>
<br>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="add2">Address 2</label>  
  <div class="col-md-5">
  <input id="add2" name="add2" type="text" placeholder="Address 2" class="form-control input-md">
    
  </div>
</div>
<br>
<br>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="city">City / Town</label>  
  <div class="col-md-5">
  <input id="city" name="city" type="text" placeholder="city" class="form-control input-md">
    
  </div>
</div>
<br>
<br>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="zip">State / Province / Region</label>  
  <div class="col-md-5">
  <input id="zip" name="zip" type="text" placeholder="State / Province / Region" class="form-control input-md">
    
  </div>
</div>
<br>
<br>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="zip">Zip / Postal Code</label>  
  <div class="col-md-5">
  <input id="zip" name="zip" type="text" placeholder="Zip Code" class="form-control input-md">
    
  </div>
</div>
<br>
<br>
 <!-- country select -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="ctry">Country</label> 
                    <div class="col-md-5">
                    <select id="ctry" name="ctry" type="text" class="form-control input-md">
                            <option value="" selected="selected">(please select a country)</option>
                            <option value="AF">Afghanistan</option>
                            <option value="AL">Albania</option>
                            <option value="DZ">Algeria</option>
                            <option value="AS">American Samoa</option>
                            <option value="AD">Andorra</option>
                            <option value="AO">Angola</option>
                            <option value="AI">Anguilla</option>
                            <option value="AQ">Antarctica</option>
                            <option value="AG">Antigua and Barbuda</option>
                            <option value="AR">Argentina</option>
                            <option value="AM">Armenia</option>
                            <option value="AW">Aruba</option>
                            <option value="AU">Australia</option>
                            <option value="AT">Austria</option>
                            <option value="AZ">Azerbaijan</option>
                            <option value="BS">Bahamas</option>
                            <option value="BH">Bahrain</option>
                            <option value="BD">Bangladesh</option>
                            <option value="BB">Barbados</option>
                            <option value="BY">Belarus</option>
                            <option value="BE">Belgium</option>
                            <option value="BZ">Belize</option>
                            <option value="BJ">Benin</option>
                            <option value="BM">Bermuda</option>
                            <option value="BT">Bhutan</option>
                            <option value="BO">Bolivia</option>
                            <option value="BA">Bosnia and Herzegowina</option>
                            <option value="BW">Botswana</option>
                            <option value="BV">Bouvet Island</option>
                            <option value="BR">Brazil</option>
                            <option value="IO">British Indian Ocean Territory</option>
                            <option value="BN">Brunei Darussalam</option>
                            <option value="BG">Bulgaria</option>
                            <option value="BF">Burkina Faso</option>
                            <option value="BI">Burundi</option>
                            <option value="KH">Cambodia</option>
                            <option value="CM">Cameroon</option>
                            <option value="CA">Canada</option>
                            <option value="CV">Cape Verde</option>
                            <option value="KY">Cayman Islands</option>
                            <option value="CF">Central African Republic</option>
                            <option value="TD">Chad</option>
                            <option value="CL">Chile</option>
                            <option value="CN">China</option>
                            <option value="CX">Christmas Island</option>
                            <option value="CC">Cocos (Keeling) Islands</option>
                            <option value="CO">Colombia</option>
                            <option value="KM">Comoros</option>
                            <option value="CG">Congo</option>
                            <option value="CD">Congo, the Democratic Republic of the</option>
                            <option value="CK">Cook Islands</option>
                            <option value="CR">Costa Rica</option>
                            <option value="CI">Cote d'Ivoire</option>
                            <option value="HR">Croatia (Hrvatska)</option>
                            <option value="CU">Cuba</option>
                            <option value="CY">Cyprus</option>
                            <option value="CZ">Czech Republic</option>
                            <option value="DK">Denmark</option>
                            <option value="DJ">Djibouti</option>
                            <option value="DM">Dominica</option>
                            <option value="DO">Dominican Republic</option>
                            <option value="TP">East Timor</option>
                            <option value="EC">Ecuador</option>
                            <option value="EG">Egypt</option>
                            <option value="SV">El Salvador</option>
                            <option value="GQ">Equatorial Guinea</option>
                            <option value="ER">Eritrea</option>
                            <option value="EE">Estonia</option>
                            <option value="ET">Ethiopia</option>
                            <option value="FK">Falkland Islands (Malvinas)</option>
                            <option value="FO">Faroe Islands</option>
                            <option value="FJ">Fiji</option>
                            <option value="FI">Finland</option>
                            <option value="FR">France</option>
                            <option value="FX">France, Metropolitan</option>
                            <option value="GF">French Guiana</option>
                            <option value="PF">French Polynesia</option>
                            <option value="TF">French Southern Territories</option>
                            <option value="GA">Gabon</option>
                            <option value="GM">Gambia</option>
                            <option value="GE">Georgia</option>
                            <option value="DE">Germany</option>
                            <option value="GH">Ghana</option>
                            <option value="GI">Gibraltar</option>
                            <option value="GR">Greece</option>
                            <option value="GL">Greenland</option>
                            <option value="GD">Grenada</option>
                            <option value="GP">Guadeloupe</option>
                            <option value="GU">Guam</option>
                            <option value="GT">Guatemala</option>
                            <option value="GN">Guinea</option>
                            <option value="GW">Guinea-Bissau</option>
                            <option value="GY">Guyana</option>
                            <option value="HT">Haiti</option>
                            <option value="HM">Heard and Mc Donald Islands</option>
                            <option value="VA">Holy See (Vatican City State)</option>
                            <option value="HN">Honduras</option>
                            <option value="HK">Hong Kong</option>
                            <option value="HU">Hungary</option>
                            <option value="IS">Iceland</option>
                            <option value="IN">India</option>
                            <option value="ID">Indonesia</option>
                            <option value="IR">Iran (Islamic Republic of)</option>
                            <option value="IQ">Iraq</option>
                            <option value="IE">Ireland</option>
                            <option value="IL">Israel</option>
                            <option value="IT">Italy</option>
                            <option value="JM">Jamaica</option>
                            <option value="JP">Japan</option>
                            <option value="JO">Jordan</option>
                            <option value="KZ">Kazakhstan</option>
                            <option value="KE">Kenya</option>
                            <option value="KI">Kiribati</option>
                            <option value="KP">Korea, Democratic People's Republic of</option>
                            <option value="KR">Korea, Republic of</option>
                            <option value="KW">Kuwait</option>
                            <option value="KG">Kyrgyzstan</option>
                            <option value="LA">Lao People's Democratic Republic</option>
                            <option value="LV">Latvia</option>
                            <option value="LB">Lebanon</option>
                            <option value="LS">Lesotho</option>
                            <option value="LR">Liberia</option>
                            <option value="LY">Libyan Arab Jamahiriya</option>
                            <option value="LI">Liechtenstein</option>
                            <option value="LT">Lithuania</option>
                            <option value="LU">Luxembourg</option>
                            <option value="MO">Macau</option>
                            <option value="MK">Macedonia, The Former Yugoslav Republic of</option>
                            <option value="MG">Madagascar</option>
                            <option value="MW">Malawi</option>
                            <option value="MY">Malaysia</option>
                            <option value="MV">Maldives</option>
                            <option value="ML">Mali</option>
                            <option value="MT">Malta</option>
                            <option value="MH">Marshall Islands</option>
                            <option value="MQ">Martinique</option>
                            <option value="MR">Mauritania</option>
                            <option value="MU">Mauritius</option>
                            <option value="YT">Mayotte</option>
                            <option value="MX">Mexico</option>
                            <option value="FM">Micronesia, Federated States of</option>
                            <option value="MD">Moldova, Republic of</option>
                            <option value="MC">Monaco</option>
                            <option value="MN">Mongolia</option>
                            <option value="MS">Montserrat</option>
                            <option value="MA">Morocco</option>
                            <option value="MZ">Mozambique</option>
                            <option value="MM">Myanmar</option>
                            <option value="NA">Namibia</option>
                            <option value="NR">Nauru</option>
                            <option value="NP">Nepal</option>
                            <option value="NL">Netherlands</option>
                            <option value="AN">Netherlands Antilles</option>
                            <option value="NC">New Caledonia</option>
                            <option value="NZ">New Zealand</option>
                            <option value="NI">Nicaragua</option>
                            <option value="NE">Niger</option>
                            <option value="NG">Nigeria</option>
                            <option value="NU">Niue</option>
                            <option value="NF">Norfolk Island</option>
                            <option value="MP">Northern Mariana Islands</option>
                            <option value="NO">Norway</option>
                            <option value="OM">Oman</option>
                            <option value="PK">Pakistan</option>
                            <option value="PW">Palau</option>
                            <option value="PA">Panama</option>
                            <option value="PG">Papua New Guinea</option>
                            <option value="PY">Paraguay</option>
                            <option value="PE">Peru</option>
                            <option value="PH">Philippines</option>
                            <option value="PN">Pitcairn</option>
                            <option value="PL">Poland</option>
                            <option value="PT">Portugal</option>
                            <option value="PR">Puerto Rico</option>
                            <option value="QA">Qatar</option>
                            <option value="RE">Reunion</option>
                            <option value="RO">Romania</option>
                            <option value="RU">Russian Federation</option>
                            <option value="RW">Rwanda</option>
                            <option value="KN">Saint Kitts and Nevis</option>
                            <option value="LC">Saint LUCIA</option>
                            <option value="VC">Saint Vincent and the Grenadines</option>
                            <option value="WS">Samoa</option>
                            <option value="SM">San Marino</option>
                            <option value="ST">Sao Tome and Principe</option>
                            <option value="SA">Saudi Arabia</option>
                            <option value="SN">Senegal</option>
                            <option value="SC">Seychelles</option>
                            <option value="SL">Sierra Leone</option>
                            <option value="SG">Singapore</option>
                            <option value="SK">Slovakia (Slovak Republic)</option>
                            <option value="SI">Slovenia</option>
                            <option value="SB">Solomon Islands</option>
                            <option value="SO">Somalia</option>
                            <option value="ZA">South Africa</option>
                            <option value="GS">South Georgia and the South Sandwich Islands</option>
                            <option value="ES">Spain</option>
                            <option value="LK">Sri Lanka</option>
                            <option value="SH">St. Helena</option>
                            <option value="PM">St. Pierre and Miquelon</option>
                            <option value="SD">Sudan</option>
                            <option value="SR">Suriname</option>
                            <option value="SJ">Svalbard and Jan Mayen Islands</option>
                            <option value="SZ">Swaziland</option>
                            <option value="SE">Sweden</option>
                            <option value="CH">Switzerland</option>
                            <option value="SY">Syrian Arab Republic</option>
                            <option value="TW">Taiwan, Province of China</option>
                            <option value="TJ">Tajikistan</option>
                            <option value="TZ">Tanzania, United Republic of</option>
                            <option value="TH">Thailand</option>
                            <option value="TG">Togo</option>
                            <option value="TK">Tokelau</option>
                            <option value="TO">Tonga</option>
                            <option value="TT">Trinidad and Tobago</option>
                            <option value="TN">Tunisia</option>
                            <option value="TR">Turkey</option>
                            <option value="TM">Turkmenistan</option>
                            <option value="TC">Turks and Caicos Islands</option>
                            <option value="TV">Tuvalu</option>
                            <option value="UG">Uganda</option>
                            <option value="UA">Ukraine</option>
                            <option value="AE">United Arab Emirates</option>
                            <option value="GB">United Kingdom</option>
                            <option value="US">United States</option>
                            <option value="UM">United States Minor Outlying Islands</option>
                            <option value="UY">Uruguay</option>
                            <option value="UZ">Uzbekistan</option>
                            <option value="VU">Vanuatu</option>
                            <option value="VE">Venezuela</option>
                            <option value="VN">Viet Nam</option>
                            <option value="VG">Virgin Islands (British)</option>
                            <option value="VI">Virgin Islands (U.S.)</option>
                            <option value="WF">Wallis and Futuna Islands</option>
                            <option value="EH">Western Sahara</option>
                            <option value="YE">Yemen</option>
                            <option value="YU">Yugoslavia</option>
                            <option value="ZM">Zambia</option>
                            <option value="ZW">Zimbabwe</option>
                        </select>
                    </div>
					<br>
<br>
<br>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="ln">Upload old image</label>  
  <div class="col-md-5">
  <input type="file" class="input-file">
     
    
  </div>
</div>
<br>
<br>
<!-- Text input-->

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="ln">Upload new image</label>  
  <div class="col-md-5">
  <input type="file" class="input-file">
     
    
  </div>
</div>       




<br>
<br>
         </div>
		 <div class="form-group">

        <label class="col-md-4 control-label" for="service_name">Description</label>  
        <div class="col-md-5">
        <textarea id="service_name" name="service_name" type="textarea" rows="4" cols="30" placeholder="Description" class="form-control input-md"></textarea>
        </div>
</div>
<br>
<br>
  </div>
  </div>
<!----- photos div starts -->
				<div class="col-sm-3 col-xs-6 paddingzeroxs" style="background-color:white;" id="your-images-width"><span id="your-images">    Your Images</span>
			
					
        <div class="col-sm-12 col-xs-12" style="background-color:white;"><h3 id="new-images">Old image</h3>
			
					<img class="col-md-12 col-xs-12 paddingzeroxs" src="images/3.jpg">
		</div>
		
		
		 <div class="col-sm-12 col-xs-12" style="background-color:white;"><h3 id="new-images"> New image</h3>
			
					<img class="col-md-12 col-xs-12 paddingzeroxs" src="images/1.jpg">
		</div>
		
	</div> 
</form>
<!----- photos div end -->
      </div>
      <div class="col-sm-12 col-xs-12" id="nextbutton">
        <button class="btn btn-primary nextBtn btn-md pull-right marLeft7" type="button">Next</button>
        <button class="btn btn-primary btn-md pull-right" type="button" id="savebutton">Save</button>
    
    </div>
</div>			
   </div>
	
	
    <div class="row setup-content" id="step-2" style="display: none;">
       <!-- <div class="col-xs-12 spousemargin">-->
            <div class="col-md-12 spousemargin paddingleftzeroxs">
              			
<div class="panel panel-voilet">
    <div class="panel-heading panelHead-voilet">
        Spouse Details
    </div>
    <div class="panel-body">
        <div class="col-md-12 ">
            <div class="col-md-8">
                <div class="form-group col-md-12">
                      <label class="col-md-4 control-label" for="service_name">Name</label>  
                      <div class="col-md-5">
                            <input id="service_name" name="service_name" type="text" placeholder="Name" class="form-control input-md">
                      </div>
                </div>
                <div class="clear-fix"></div>
                <div class="form-group col-md-12">
                    <label class="col-md-4 control-label" for="service_name">About</label>  
                    <div class="col-md-5">
                      <textarea id="service_name" name="service_name" type="textarea" rows="3" cols="30" placeholder="About Spouse" class="form-control input-md"></textarea>
                    </div>
                </div>
                <div class="clear-fix"></div>
                <div class="form-group col-md-12">
                    <label class="col-md-4 control-label" for="sep_json">Image</label>
                    <div class="col-md-4">
                        <input type="file" class="input-file">
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-xs-12">
                  <img class="spouseImage" src="images/bird1.png">
            </div>
        </div>
          
    </div>
</div>
              

</div>



<div class="col-md-12 childmargin paddingleftzeroxs">
	
    <div class="panel panel-green">
        <div class="panel-heading panelHead-green">
            Child Details
        </div>
        <div class="panel-body">
            <table class="table table-bordered table-hover" id="tab_logic">
              <thead>
                <tr>
                  <th class="text-center checkboxfieldwidth" id="select-font-xs">
                    Select
                  </th>
                  <th class="text-center photofieldwidth">
                    Photo
                  </th>
                  <th class="text-center namewidth">
                    Name
                  </th>
                  <th class="text-center aboutfieldwidth">
                    About
                  </th>
                  <th class="text-center uploadphotofieldwidth">
                    UploadPhoto
                  </th>
                </tr>
              </thead>
              <tbody>
                <tr id="addr0">
                  <td>
                 <!-- <p class="snopadding">1</p>-->
				 <p class="checkboxpadding"><input type="checkbox" name="number" value="select"></p>

                  </td>
                  <!--<td>
                  <input type="text" name='name0'  placeholder='Name' class="form-control"/>
                  </td>-->
                  <td>
                   <img src="images/bird1.png" name="image" class="imageSpace photofieldwidth photofieldwidthxs">
                  </td>
                  <td>
                  <p class="columnpadding"><input type="text" name="name0" placeholder="Name" class="form-control"></p>
                  </td>
                  <!--<td>
                  <input type="text" name='eduction' placeholder='Eduction' class="form-control"/>
                  </td>-->
                  <td>
                   <p class="columnpadding"><input type="text" name="about" placeholder="About" class="form-control"></p>
                  </td>
                  <td>
                  <p class="columnpadding"><input type="file" name="photo" placeholder="Uploadphoto" class="form-control"></p>
                  </td>
                </tr>
                          <tr id="addr1"></tr>
              </tbody>
            </table>
            <a id="add_row" class="btn btn-default pull-left">Add Row</a><a id="delete_row" class="pull-right btn btn-default">Delete Row</a>
        </div>
    </div>
</div>

				
<div class="col-md-12 childmargin paddingleftzeroxs">
    <div class="panel panel-darkBlue">
        <div class="panel-heading panelHead-darkBlue">
          Upload family Photos
        </div>
        <div class="panel-body" id="paddingright-xs">
          <div class="col-md-12 paddingzeroxs">
      <table class="table table-bordered table-hover" id="tab_logic_family_photos">
        <thead>
          <tr>
            <th class="text-center checkboxfieldwidth">
              Select
            </th>
            <th class="text-center photofieldwidth">
              Photo
            </th>
            <th class="text-center photouploadfieldwidth" id="uploadphotofont-xs">
              Upload Photo
            </th>
            <th class="text-center" id="description">
              Description
            </th>
            <th class="text-center privacy-field-width">
              Privacy
            </th>
            
          </tr>
        </thead>
        <tbody>
          <tr id="family_photos0">
            <td>
          
		  	<p class="checkboxpadding"><input type="checkbox" name="number" value="select"></p>
            </td>
            <td>
             <img src="images/bird1.png" name="image" class="imageSpace photofieldwidth">
            </td>
            <td>
            <p class="columnpadding"><input type="file" name="photo" placeholder="photo" class="form-control photouploadfieldwidth" id="familyphotoupload"></p>
            </td>
            <td>
            <p class="columnpadding"><input type="text" name="description" placeholder="Description" class="form-control"></p>
            </td>
            <td>
           <p class="privacypadding"><input type="checkbox" name="privacy" placeholder="privacy" class="form-control privacy-field-width" id="checkboxstyle"></p>
            </td>
            
          </tr>
                    <tr id="family_photos1"></tr>
        </tbody>
      </table>
    </div>
        <a id="add_row_family_photos" class="btn btn-default pull-left">Add Row</a><a id="delete_row_family_photos" class="pull-right btn btn-default">Delete Row</a>
</div>
</div>
		
</div>

				

		<div class="col-xs-12">
            <div class="col-md-12">
                <!--<h3> Preview & Submit</h3>-->
                <button class="btn btn-primary btn-md pull-right" type="submit">Save</button>
            </div>
        </div>
		

              <!--  <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button> -->
            </div>
        </div>
    </div>

</body>
</html>