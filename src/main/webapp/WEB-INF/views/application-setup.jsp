<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Navaera - [Universal Login Manager]</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Animated Responsive Image Grid - Cycling through a set of images in a responsive grid." />
	<meta name="keywords" content="grid, images, thumbnails, responsive, css3, jquery, javascript, random, transition, 3d, perspective" />
	<meta name="author" content="Codrops" />
	<!-- <link rel="shortcut icon" href="../favicon.ico"> -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="/resources/css/master.css">
	<link rel="stylesheet" href="/resources/css/custom.css">
	<!-- <link rel="stylesheet" type="text/css" href="./../css/demo.css" /> -->
	<link rel="stylesheet" type="text/css" href="/resources/css/login.css" />
	<script type="text/javascript" src="/resources/js/modernizr.custom.26633.js"></script>
	<noscript>
		<link rel="stylesheet" type="text/css" href="/resources/css/fallback.css" />
	</noscript>
	<!--[if lt IE 9]>
				<link rel="stylesheet" type="text/css" href="/resources/css/fallback.css" />
			<![endif]-->
	<style>
		button.btn.btn-link {
				display: block;
				margin-bottom: 0.5rem;
				font-size: 1rem;
				text-decoration: none;
			}

			button.btn.btn-link.collapsed  i.fa.fa-angle-right {
				transform: rotate(0deg);
			}
			button.btn.btn-link.collapsed.show  i.fa.fa-angle-right {
				transform: rotate(90deg);
			}

			button.btn.btn-link i.fa.fa-angle-right {
				transform: rotate(90deg);
			}

			.input-group-append .input-group-text i.fa {
				width: 30px;
			}
			.card.center-area{
				width: 100%;
			}
		
		</style>
</head>

<body style="background:#8392a9; overflow-y: scroll;">
	<!-- Codrops top bar -->
	<section class="main">

		<div id="ri-grid" class="ri-grid ri-grid-size-2">
			<img class="ri-loading-image" style="margin:2.5rem 0px;" src="./../img/loading.gif" />
			<a href="http://localhost:9090/EnViewIMF/login#">
				<ul>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/1.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/2.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/3.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/4.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/5.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/6.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/7.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/8.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/9.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/10.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/11.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/12.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/13.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/14.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/15.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/16.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/17.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/18.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/19.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/20.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/21.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/22.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/23.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/24.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/25.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/26.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/27.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/28.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/29.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/30.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/31.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/32.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/33.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/34.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/35.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/36.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/37.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/38.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/39.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/40.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/41.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/42.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/43.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/44.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/45.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/46.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/47.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/48.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/49.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/50.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/51.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/52.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/53.jpg" />
						</a>
					</li>
					<li>
						<a href="#">
							<img src="https://www.navaeraondemand.com/ulm/images/54.jpg" />
						</a>
					</li>
				</ul>
			</a>
		</div>
		<div class="codrops-header-special">
			<h1>Application Setup Wizard</h1>
		</div>


	</section>
	<div class="col  " style="background: #b6bec8;">
		<div class="row" id="loginForm1">
			<div class="col-lg-7 d-sm-flex justify-content-center" style="margin:3rem auto 3rem;">
				<div class="card center-area">
					<div class="card-body">
						<div class="alert alert-info" role="alert">
							<p class="m-0"> Please complete the fields below to setup this app.</p>
						</div>
						<button class="btn btn-link collapsed p-0 p-sm-2 d-block" data-toggle="collapse" data-target="#collapseOne"
						 aria-expanded="false">
							<h4> <i class="fa fa-angle-right" aria-hidden="true"></i> <Strong>Basic Configuration</Strong></h5>
						</button>
						<div id="collapseOne" class="collapse" aria-labelledby="headingOne">
							<div class=" card card-body border-0 py-0">
									<form class="p-md-3">
									<div class="form-group row mb-2">
										<label for="" class="col-md-4">
											<h5 class="m-0 pt-1">Base Url </h5>
										</label>

										<div class="input-group col-md-8 mb-2">
											<input type="text" id="inpBaseUrl" name = "baseUrl" class="form-control  asset-basics" value="${baseUrl}">
											<div class="input-group-append asset-basics">
												<span class="input-group-text bg-transparent p-0 rounded border-0">
													<i class="fa bg-danger text-white fa-exclamation  p-2 rounded-circle ml-2" id = "iBaseUrl" aria-hidden="true"></i>
												</span>
											</div>
										</div>
										<small id="helpId" class="col-12 form-text text-muted">
											The Url that will be used to access this system (e.g. https://someurl.somthing.com )
										</small>
									</div>

									<div class="form-group row mb-2">
										<label for="" class="col-md-4">
											<h5 class="m-0 pt-1">Log File Path</h5>
										</label>
										<div class="input-group col-md-8 mb-2">
											<input type="text" id="inpLogFilePath" name = "logFilePath" class="form-control  asset-basics" value="${logFilePath}">
											<div class="input-group-append asset-basics">
												<span class="input-group-text bg-transparent p-0 rounded border-0">
													<i class="fa fa-exclamation text-white bg-danger  p-2 rounded-circle ml-2" id = "iLogFilePath" aria-hidden="true"></i>
												</span>
											</div>
										</div>
										<small id="helpId" class="col-12 form-text text-muted">
											The path on the server that will be used to store log files
										</small>
									</div>
								</form>
							</div>
						</div>

						<button class="btn btn-link collapsed p-0 p-sm-2 d-block" data-toggle="collapse" data-target="#collapseTwo"
						 aria-expanded="false">
							<h4><i class="fa fa-angle-right" aria-hidden="true"></i><Strong> Email Server Configuration</Strong></h5>
						</button>

						<div id="collapseTwo" class="collapse " aria-labelledby="headingTwo">
							<div class=" card card-body border-0 py-0">
								<form class="p-md-3">
									<div class="form-group row mb-2">
										<label for="" class="col-md-4">
											<h5 class="m-0 pt-1">SMTP Server </h5>
										</label>
										<div class="input-group col-md-8 mb-2">
											<input type="text" id="inpSMTPServer" class="form-control  asset-basics" name = "smtp.server" value="${smtp_server}">
											<div class="input-group-append asset-basics">
												<span class="input-group-text bg-transparent p-0 rounded border-0">
													<i class="fa bg-danger text-white fa-exclamation  p-2 rounded-circle ml-2" id = "iSMTPServer" aria-hidden="true"></i>
												</span>
											</div>
										</div>
										<small id="helpId" class="col-12 form-text text-muted">
											Hostname of IP address of the SMTP server
										</small>
									</div>

									<div class="form-group row mb-2">
										<label for="" class="col-md-4">
											<h5 class="m-0 pt-1">SMTP port</h5>
										</label>
										<div class="input-group col-md-8 mb-2">
											<input type="text" id="inpSMTPPort" class="form-control  asset-basics" name = "smtp.port" value="${smtp_port}">
											<div class="input-group-append asset-basics">
												<span class="input-group-text bg-transparent p-0 rounded border-0">
													<i class="fa fa-exclamation text-white bg-danger  p-2 rounded-circle ml-2"  id="iSMTPPort" aria-hidden="true"></i>
												</span>
											</div>
										</div>
										<small id="helpId" class="col-12 form-text text-muted">
											TCP port number of the SMTP Server
										</small>
									</div>

									<div class="form-group row mb-2">
										<label for="" class="col-md-4">
											<h5 class="m-0 pt-1">SMTP Username</h5>
										</label>
										<div class="input-group col-md-8 mb-2">
											<input type="text" id="inpSMTPUserName" class="form-control  asset-basics" name = "smtp.username" value="${smtp_username}">
											<div class="input-group-append asset-ba	sics">
												<span class="input-group-text bg-transparent p-0 rounded border-0">
													<i class="fa fa-check text-white bg-success  p-2 rounded-circle ml-2" id="iSMTPUserName" aria-hidden="true"></i>
												</span>
											</div>
										</div>
										<small id="helpId" class="col-12 form-text text-muted">
											The username of the SMTP server to connect to
										</small>
									</div>

									<div class="form-group row mb-2">
										<label for="" class="col-md-4">
											<h5 class="m-0 pt-1">SMTP Password</h5>
										</label>
										<div class="input-group col-md-8 mb-2">
											<input type="text" id="inpSMTPPassword" class="form-control  asset-basics" name = "smtp.password" value="${smtp_password}">
											<div class="input-group-append asset-basics">
												<span class="input-group-text bg-transparent p-0 rounded border-0">
													<i class="fa fa-check text-white bg-success  p-2 rounded-circle ml-2" id = "inpSMTPPassword" aria-hidden="true"></i>
												</span>
											</div>
										</div>
										<small id="helpId" class="col-12 form-text text-muted">
											The password of the SMTP server to connect to
										</small>
									</div>

								</form>
							</div>
						</div>

						<button class="btn btn-link p-0 p-sm-2 d-block" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false">
							<h4> <i class="fa fa-angle-right" aria-hidden="true"></i><Strong> Database Configuration</Strong></h5>
						</button>

						<div id="collapseThree" class="collapse show" aria-labelledby="headingThree">
							<div class=" card card-body border-0 py-0">
								<form class="p-md-3">
									<div class="form-group row mb-2">
										<label for="" class="col-md-4">
											<h5 class="m-0 pt-1">Hostname </h5>
										</label>
										<div class="input-group col-md-8 mb-2">
											<input type="text" id="inpDBHostName" class="form-control  asset-basics" name = "spring.datasource.hostname" value="${spring_datasource_hostname}">
											<div class="input-group-append asset-basics">
												<span class="input-group-text bg-transparent p-0 rounded border-0">
													<i class="fa bg-danger text-white fa-exclamation  p-2 rounded-circle ml-2" id = "iDBHostName" aria-hidden="true"></i>
												</span>
											</div>
										</div>
										<small id="helpId" class="col-12 form-text text-muted">
											Hostname of IP address of the Dabase server
										</small>
									</div>

									<div class="form-group row mb-2">
										<label for="" class="col-md-4">
											<h5 class="m-0 pt-1">Port</h5>
										</label>
										<div class="input-group col-md-8 mb-2">
											<input type="text" id="inpDBPort" class="form-control  asset-basics" name = "spring.datasource.port" value="${spring_datasource_port}">
											<div class="input-group-append asset-basics">
												<span class="input-group-text bg-transparent p-0 rounded border-0">
													<i class="fa fa-exclamation text-white bg-danger  p-2 rounded-circle ml-2" aria-hidden="true" id="iDBPort"></i>
												</span>
											</div>
										</div>
										<small id="helpId" class="col-12 form-text text-muted">
											TCP port number of the Database Server
										</small>
									</div>

									<div class="form-group row mb-2">
										<label for="" class="col-md-4">
											<h5 class="m-0 pt-1">Username</h5>
										</label>
										<div class="input-group col-md-8 mb-2">
											<input type="text" class="form-control  asset-basics" id ="inpDBUserName" name = "spring.datasource.username" value="${spring_datasource_username}">
											<div class="input-group-append asset-basics">
												<span class="input-group-text bg-transparent p-0 rounded border-0">
													<i class="fa fa-exclamation text-white bg-danger  p-2 rounded-circle ml-2" id ="iDBUserName" aria-hidden="true"></i>
												</span>
											</div>
										</div>
										<small id="helpId" class="col-12 form-text text-muted">
											The username of the SMTP server to connect to
										</small>
									</div>

									<div class="form-group row mb-2">
										<label for="" class="col-md-4">
											<h5 class="m-0 pt-1">Password</h5>
											<passwor></passwor>
										</label>
										<div class="input-group col-md-8 mb-2">
											<input type="text" id="inpDBPassword" class="form-control  asset-basics" name = "spring.datasource.password" value="${spring_datasource_password}">
											<div class="input-group-append asset-basics">
												<span class="input-group-text bg-transparent p-0 rounded border-0">
													<i class="fa fa-exclamation text-white bg-danger  p-2 rounded-circle ml-2"  id = "iDBPassword" aria-hidden="true"></i>
												</span>
												
											</div>
										</div>
										<small id="helpId" class="col-12 form-text text-muted">
											The password of the Database to connect to
										</small>
									</div>
									<div class="form-group row mb-2">
										<label for="" class="col-md-4">
											<h5 class="m-0 pt-1">Database Name</h5>
										</label>
										<div class="input-group col-md-8 mb-2">
											<input type="text" id="inpDBName" class="form-control  asset-basics" name = "spring.datasource.name" value="${spring_datasource_db}">
											<div class="input-group-append asset-basics">
												<span class="input-group-text bg-transparent p-0 rounded border-0">
													<i class="fa fa-exclamation text-white bg-danger  p-2 rounded-circle ml-2" id = "iDBName" aria-hidden="true"></i>
												</span>
											</div>
										</div>
										<small id="helpId" class="col-12 form-text text-muted">
											The name of the database
										</small>
									</div>
									<div class="row">
										<div class="col-12">
											<button id="validateDBConfig" class="btn btn-primary float-right" type="button" role="button">Load</button>
										</div>
									</div>

								</form>
							</div>
						</div>

						<button class="btn btn-link collapsed p-0 p-sm-2 d-block" data-toggle="collapse" data-target="#collapseFour"
						 aria-expanded="false">
							<h4><i class="fa fa-angle-right" aria-hidden="true"></i><Strong> LDAP Configuration</Strong></h5>
						</button>

						<div id="collapseFour" class="collapse " aria-labelledby="headingFour">
							<div class=" card card-body border-0 py-0">
								<form class="p-md-3">
									<div class="form-group row mb-2">
										<label for="" class="col-md-4">
											<h5 class="m-0 pt-1">Hostname </h5>
										</label>
										<div class="input-group col-md-8 mb-2">
											<input type="text" id="inpLdapHostName" class="form-control  asset-basics" name = "ldap.hostname" value="${ldap_host}">
											<div class="input-group-append asset-basics">
												<span class="input-group-text bg-transparent p-0 rounded border-0">
													<i class="fa bg-danger text-white fa-exclamation  p-2 rounded-circle ml-2" id = "iLdapHostName" aria-hidden="true"></i>
												</span>
											</div>
										</div>
										<!-- <div class="col-md-8">
												<input type="text" class="form-control " id="">
											</div> -->
										<small id="helpId" class="col-12 form-text text-muted">
											Hostname of IP address of the LDAP server
										</small>
									</div>

									<div class="form-group row mb-2">
										<label for="" class="col-md-4">
											<h5 class="m-0 pt-1">Port</h5>
										</label>
										<div class="input-group col-md-8 mb-2">
											<input type="text" id="inpLdapPort" class="form-control  asset-basics" name = "ldap.port" value="${ldap_port}">
											<div class="input-group-append asset-basics">
												<span class="input-group-text bg-transparent p-0 rounded border-0">
													<i class="fa fa-exclamation text-white bg-danger  p-2 rounded-circle ml-2" id = "iLdapPort" aria-hidden="true"></i>
												</span>
											</div>
										</div>
										<small id="helpId" class="col-12 form-text text-muted">
											TCP port number of the LDAP Server
										</small>
									</div>

									<div class="form-group row mb-2">
										<label for="" class="col-md-4">
											<h5 class="m-0 pt-1">Username</h5>
										</label>
										<div class="input-group col-md-8 mb-2">
											<input type="text" id="inpLdapUserName" class="form-control  asset-basics" name = "ldap.username" value="${ldap_username}">
											<div class="input-group-append asset-basics">
												<span class="input-group-text bg-transparent p-0 rounded border-0">
													<i class="fa fa-exclamation text-white bg-danger  p-2 rounded-circle ml-2" id = "iLdapUserName" aria-hidden="true"></i>
												</span>
											</div>
										</div>
										<small id="helpId" class="col-12 form-text text-muted">
											The username of the LDAP server to connect to
										</small>
									</div>
									<!-- <div class="input-group col-sm-6 mb-2">
											<input type="text" id="assetId" class="form-control  asset-basics" placeholder="asset id">
											<div class="input-group-append asset-basics">
												<span class="input-group-text bg-transparent p-0 rounded border-0">
													<i class="fa bg-danger text-white fa-exclamation  p-2 rounded-circle ml-2" aria-hidden="true"></i>
												</span>
											</div>
										</div> -->
									<div class="form-group row mb-2">
										<label for="" class="col-md-4">
											<h5 class="m-0 pt-1">Password</h5>
										</label>

										<div class="input-group col-sm-8">
											<input type="text" id="inpLdapPassword" class="form-control" name = "ldap.password" value="${ldap_password}">
											<div class="input-group-append">
												<span class="input-group-text bg-transparent p-0 rounded border-0">
													<i class="fa bg-danger text-white fa-exclamation  p-2 rounded-circle ml-2" id = "iLdapPassword" aria-hidden="true"></i>
												</span>
											</div>
										</div>

										<!-- <div class="col-md-8">
												<input type="text" class="form-control " id="">
											</div> -->
										<small id="helpId" class="col-12 form-text text-muted">
											The password of the LDAP server to connect to
										</small>
									</div>
									<div class="form-group row mb-2">
										<label for="" class="col-md-4">
											<h5 class="m-0 pt-1">Base DN</h5>
										</label>
										<div class="input-group col-md-8 mb-2">
											<input type="text" id="inpLdapBaseDN" class="form-control  asset-basics" name = "ldap.basedn" value="${ldap_basedn}">
											<div class="input-group-append asset-basics">
												<span class="input-group-text bg-transparent p-0 rounded border-0">
													<i class="fa fa-exclamation text-white bg-danger  p-2 rounded-circle ml-2" id = "iLdapBaseDN" aria-hidden="true"></i>
												</span>
											</div>
										</div>
										<small id="helpId" class="col-12 form-text text-muted">
											Root node in LDAP from which to search for users and groups. Example cn=users d-c=example, dc=name
										</small>
									</div>
									<div class="form-group row mb-2">
										<label for="" class="col-md-4">
											<h5 class="m-0 pt-1">Additional User DN</h5>
										</label>
										<div class="input-group col-md-8 mb-2">
											<input type="text" id="inpLdapAdditionalUserDN" class="form-control  asset-basics" name = "ldap.additionaluserdn" value="${ldap_userdn}">
											<div class="input-group-append asset-basics">
												<span class="input-group-text bg-transparent p-0 rounded border-0">
													<i class="fa fa-exclamation text-white bg-danger  p-2 rounded-circle ml-2" id = "iLdapAdditionalUserDN" aria-hidden="true"></i>
												</span>
											</div>
										</div>
										<small id="helpId" class="col-12 form-text text-muted">
											Prepended to the base DN to limit the scope when searching for users.
										</small>
									</div>
									<div class="form-group row mb-2">
										<label for="" class="col-md-4">
											<h5 class="m-0 pt-1">Administration</h5>
										</label>
										<div class="input-group col-md-8 mb-2">
											<input type="text" id="inpLdapAdministration" class="form-control  asset-basics" name = "ldap.administration" value="${ldap_administration}">
											<div class="input-group-append asset-basics">
												<span class="input-group-text bg-transparent p-0 rounded border-0">
													<i class="fa fa-check text-white bg-success  p-2 rounded-circle ml-2" id = "iLdapAdministration" aria-hidden="true"></i>
												</span>
											</div>
										</div>
										<small id="helpId" class="col-12 form-text text-muted">
											The LDAP account to be used for the system's initial administrator. Example : username (for
											username@example.com)
										</small>
									</div>

								</form>
							</div>
						</div>
						<div class="alert alert-danger" role="alert">
							<p class="m-0" id="error_msg">Example error message</p>
						</div>
						<div class="row">
							<div class="col-12">
								<a name="" id="submitForm" class="btn btn-primary float-right" href="#" role="button">save</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<div class="container-fluid">
        <div class="col-12 py-3 d-sm-flex justify-content-between align-items-center">
            <div class=" text-white float-sm-left text-center my-2"> &#169; Navaera Sciences, LLC</div>
            <div class=" text-white float-sm-left text-center my-2">  <img src="./../img/nlogo.png"></div>
        </div>

    </div>




	<script src="https://code.jquery.com/jquery-3.2.1.min.js "></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js " integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh "
	 crossorigin="anonymous "></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js " integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ "
	 crossorigin="anonymous "></script>
	<script type="text/javascript">
		var $j = $.noConflict(true);
	</script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.gridrotator.js"></script>
	<script type="text/javascript" src="/resources/js/application-setup.js">
	</script>
</body>

</html>