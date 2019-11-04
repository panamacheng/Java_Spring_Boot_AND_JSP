<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
	<title> Navaera Internal App</title>
	<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/vendor/chosen_v1.8.2/chosen.css">
<link rel="stylesheet" href="/resources/css/jqx.base.css" type="text/css" />
<link rel="stylesheet" href="/resources/css/jqxGridStyle.css">
<link rel="stylesheet" href="/resources/css/master.css">
<link rel="stylesheet" href="/resources/css/custom.css">
<link rel="stylesheet" href="/resources/css/image-uploader.css">
<style>

.dropdown-item{
	width: auto !important;
}

.navbar .form-group input
{
	text-align: center;
}
.fa-search{
	position: absolute; right: 25px; top: 8px;
	color:#777;
}


.dropdown-menu {
            left: auto;
            right: 0px !important;
            top: 40px;
        }        

        p.dropdown-header.menu-header {
            background: #efefef;
            padding: 8px 15px;
            color: #333;
            border: 1px solid #efefef;
            font-size: 1rem;
        }

        .dropdown-menu.dropdown-menu-right.pt-0.show:before {
            content: "";
            position: absolute;
            right: 8px;
            background: transparent;
            border-style: solid;
            border-top: 1px solid transparent;
            border-bottom: 12px solid #efefef;
            border-right: 8px solid transparent;
            border-left: 8px solid transparent;
            top: -14px;
            z-index: 99999;
        }

        button.btn.btn-link.ldap-conf-sections {
            display: block;
            margin-bottom: 0.5rem;
            font-size: 1rem;
            text-decoration: none;
        }

        button.btn.btn-link.ldap-conf-sections.collapsed i.fa.fa-angle-right {
            transform: rotate(0deg);
        }

        button.btn.btn-link.ldap-conf-sections i.fa.fa-angle-right {
            transform: rotate(90deg);
        }
	</style>
</head>

<body>
	<!--  header section -->
	<main>
		<header class="header">

			<nav class="navbar navbar-expand-lg navbar-light pt-2 px-4 d-flex justify-content-between align-items-center">
				<a class="navbar-brand m-0 p-0 text-light" href="#">Navaera – [Navaera AI]</a>

				<div class="form-group col col-md-6 m-0">
				
				
				</div>

				<div class="btn-group ">
					<button type="button" class="btn btn-light rounded border-0 p-0" data-toggle="dropdown" aria-expanded="false">
						<!-- <i class="fa fa-user-o" aria-hidden="true"></i> -->
						<img src="/resources/img/avatar.PNG" height="35px"/>
					</button>
					<div class="header dropdown-menu dropdown-menu-right pt-0">
						<h6 style="padding: 10px 20px 10px; color: #333; background: #efefef;">Manglesh R. Yadav</h6>
						<button class=" list-circle dropdown-item" type="button">Action</button>
						<button class="list-circle dropdown-item" type="button">Another action</button>
						<button class="list-circle dropdown-item" type="button">Something else here</button>
					</div>
				</div>
			</nav>
		</header>

		<aside class="sidenav">
			<ul class="nav flex-column">
				<li class="nav-item pt-3">
					<a class="nav-link d-flex justify-content-center align-items-center" href="../administrator.html">
						<i class="fa fa-home " aria-hidden="true"></i>
					</a>
		
				</li>
				<li class="nav-item ">
					<a class="nav-link d-flex justify-content-center align-items-center " href="../administrator.html">
						<i class="fa fa-cog " aria-hidden="true "></i> </a>
				</li>
				<li class="nav-item border-0 ">
					<a class="nav-link d-flex justify-content-center align-items-center" href="javascript:showFavorableBar();">
					
				</li>
			</ul>
			<div class="favorite-bar">
				<h3 class="p-3 m-0">Favourite</h3>
				<div class="list-group list-group-flush">
					<a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
						<div class="d-flex w-100 justify-content-start align-items-center">
							<i class="fa fa-database breadcrumn-icon " aria-hidden="true "></i>
							<h6 class="pl-2 m-0">Sub page1</h6>
						</div>
					</a>
					<a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
						<div class="d-flex w-100 justify-content-start align-items-center">
							<i class="fa fa-database breadcrumn-icon " aria-hidden="true "></i>
							<h6 class="pl-2 m-0">Sub page2</h6>
						</div>
					</a>
					<a href="#" class="list-group-item list-group-item-action flex-column align-items-start disabled">
						<div class="d-flex w-100 justify-content-start align-items-center">
							<i class="fa fa-database breadcrumn-icon " aria-hidden="true "></i>
							<h6 class="pl-2 m-0">Sub page3</h6>
						</div>
					</a>
				</div>
			</div>
		</aside>

		<div class="content-wrapper col">
			<div class="row">
				<div class="favorite-bar">
					<h3 class="p-3 m-0">Favourite</h3>
					<div class="list-group list-group-flush">
						<a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
							<div class="d-flex w-100 justify-content-start align-items-center">
								<i class="fa fa-database breadcrumn-icon " aria-hidden="true "></i>
								<h6 class="pl-2 m-0">Sub page1</h6>
							</div>
						</a>
						<a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
							<div class="d-flex w-100 justify-content-start align-items-center">
								<i class="fa fa-database breadcrumn-icon " aria-hidden="true "></i>
								<h6 class="pl-2 m-0">Sub page2</h6>
							</div>
						</a>
						<a href="#" class="list-group-item list-group-item-action flex-column align-items-start disabled">
							<div class="d-flex w-100 justify-content-start align-items-center">
								<i class="fa fa-database breadcrumn-icon " aria-hidden="true "></i>
								<h6 class="pl-2 m-0">Sub page3</h6>
							</div>
						</a>
					</div>
				</div>
				<div class="col content-area">
                    <div class="row">
                        <div class="col-12 px-0">
                            <nav aria-label="breadcrumb " class="p-4 m-0  d-flex justify-content-between" role="navigation ">
                                <ol class="breadcrumb bg-transparent m-0 p-0 ">
                                    <i class="fa fa-cog breadcrumn-icon " aria-hidden="true "></i>
                                    <li class="breadcrumb-item  pl-2">Administration</li>
                                    <li class="breadcrumb-item  pl-2"> LDAP Configuration</li>

                                </ol>
                                <!-- <a class="nav-link d-flex justify-content-center align-items-center p-0" href="javascript:showFavorableBar();">
                                    <i class="fa fa-heart-o fa-lg favourite-icon pt-2" aria-hidden="true"></i>
                                </a> -->
                            </nav>
                            <div class="content card mx-4 ">
                                <div class="row">

                                    <div class="col-md-8 px-3 ">
                                        <div class=" card card-body border-0 p-0 p-sm-2">
                                            <h4>
                                                Configure LDAP User Directory <i class="fa fa-question-circle-o" aria-hidden="true"></i>
                                            </h4>
                                            <p>
                                                The settings below configure an LDAP directory which will be regularly synchronised with JIRA. Contact your server administrator
                                                to find out the required settings for your LDAP server.
                                            </p>
                                        </div>
                                    </div>

                                    <div class="col-12 px-3 ">

                                        <button class="btn btn-link ldap-conf-sections p-0 p-sm-2" type="button" data-toggle="collapse" data-target="#collapseOne1"
                                            aria-expanded="true" aria-controls="collapseOne">
                                            Server Settings
                                        </button>

                                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne">
                                            <div class=" card card-body border-0 p-0">
                                                <form>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            Name:<span class="" required="">* </span>
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" class="form-control col-md-8 col-lg-6" id="" placeholder="Microsoft Active Directory">
                                                        </div>
                                                    </div>

                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            Directory Type:<span class="" required="">* </span>
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <select class="form-control col-md-8 col-lg-6" name="" id="">
                                                                <option>Microsoft Active Directory</option>
                                                                <option>Microsoft Active Directory1</option>
                                                                <option>Microsoft Active Directory2</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            Hostname:<span class="" required="">* </span>
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" class="form-control col-md-8 col-lg-6" id="" placeholder="pdc.navaera.com">
                                                            <small id="helpId" class="form-text text-muted">
                                                                Hostname of the server runnig LDAP. Example ldap.example.com
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            Port:<span class="" required="">* </span>
                                                        </label>
                                                        <div class="col-sm-6 col-md-7 ">
                                                            <div class="  d-flex justify-content-start align-items-center">
                                                                <input type="text" style="width:70px;" class="form-control " id="" placeholder="389">
                                                                <div class="form-check mx-2">
                                                                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                                                    <label class="form-check-label" for="defaultCheck1">
                                                                        Use SSL
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            Username:
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" class="form-control col-md-8 col-lg-6" id="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                User to log in to LDAP. Examples: user@domain.name. or cn=user, dc=domain, dc=name
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            Password:
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="password" class="form-control col-md-8 col-lg-6" id="" value="akjhfhfsfacvqwfqwff" placeholder="Password">
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>


                                        <button class="btn btn-link ldap-conf-sections collapsed p-0 p-sm-2" data-toggle="collapse" data-target="#collapseTwo2" aria-expanded="false"
                                            aria-controls="collapseTwo">
                                            LDAP Schema
                                        </button>

                                        <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo">
                                            <div class=" card card-body border-0 p-0">
                                                <form>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            Base DN:
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" class="form-control col-md-8 col-lg-6" id="" value="DC=navaera, DC=Com" placeholder="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                Root node in LDAP from which to search for users and groups. Example: cn=user,dc=example,dc=name.
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            Additional User DN:
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" class="form-control col-md-8 col-lg-6" id="" value="CN=UUSERS" placeholder="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                Prepended to the base DN to limit the scope when searching for users.
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            Additional Group DN:
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" class="form-control col-md-8 col-lg-6" id="" value="CN=UUSERS" placeholder="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                Prepended to the base DN to limit the scope when searching for groups.
                                                            </small>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>


                                        <button class="btn btn-link ldap-conf-sections collapsed p-0 p-sm-2" data-toggle="collapse" data-target="#collapseThree3"
                                            aria-expanded="false" aria-controls="collapseThree">
                                            LDAP Permissions
                                        </button>

                                        <div id="collapseThree" class="collapse show" aria-labelledby="headingThree">
                                            <div class=" card card-body border-0 p-0">
                                                <form>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">

                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
                                                                <label class="form-check-label" for="exampleRadios2">
                                                                    Read Only
                                                                </label>
                                                            </div>
                                                            <small id="helpId" class="form-text text-muted form-check">
                                                                Users, Groups and memberships are retrieved from your LDAP server and cannot be modified in justify-content-start
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                                                                <label class="form-check-label" for="exampleRadios1">
                                                                    Read Only, with Local groups
                                                                </label>
                                                            </div>
                                                            <small id="helpId" class="form-text text-muted form-check">
                                                                Users, Groups and memberships are retrieved from your LDAP server and cannot be modified in justify-content-start user from
                                                                LDAP can added to groups maintained in JIRA's internal directory.
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios3" value="option3">
                                                                <label class="form-check-label" for="exampleRadios3">
                                                                    Read/Write
                                                                </label>
                                                            </div>
                                                            <small id="helpId" class="form-text text-muted form-check">
                                                                Users, Groups and memberships are retrieved from your LDAP server and cannot be modified in justify-content-start user from
                                                                LDAP can added to groups maintained in JIRA's internal directory.
                                                            </small>

                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            Default Group Memberships:
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" class="form-control col-md-8 col-lg-6" id="" value="" placeholder="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                A comma saperatred list of groups that user will be added to when they first log in.This will only be done once per user.
                                                                These groups will be created, if they dont't already created.
                                                            </small>
                                                        </div>
                                                    </div>

                                                </form>
                                            </div>
                                        </div>


                                        <button class="btn btn-link ldap-conf-sections collapsed p-0 p-sm-2" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false">
                                            <i class="fa fa-angle-right" aria-hidden="true"></i> Advanced Settings
                                        </button>

                                        <div id="collapseFour" class="collapse" aria-labelledby="headingFour">
                                            <div class=" card card-body border-0 p-0">
                                                <form>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">

                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck2" disabled>
                                                                <label class="form-check-label" for="defaultCheck2">
                                                                    Secure SSL
                                                                </label>
                                                            </div>
                                                            <small id="helpId" class="form-text text-muted form-check">
                                                                Verify that the SSL certificate is valid for this connection
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck2">
                                                                <label class="form-check-label" for="defaultCheck2">
                                                                    Enable Nested Groups
                                                                </label>
                                                            </div>
                                                            <small id="helpId" class="form-text text-muted form-check">
                                                                If true, groups can contain other groups. Enabling this option may degrade performance.
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck2">
                                                                <label class="form-check-label" for="defaultCheck2">
                                                                    Manage User Status Manually
                                                                </label>
                                                            </div>
                                                            <small id="helpId" class="form-text text-muted form-check">
                                                                If true, you can activate and deactivate users in Crowd independent of their status in the directory server.
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck2">
                                                                <label class="form-check-label" for="defaultCheck2">
                                                                    Filtered Out Expired Users
                                                                </label>
                                                            </div>
                                                            <small id="helpId" class="form-text text-muted form-check">
                                                                If ticked, expired users will be automatically removed. For cached directories, the removal of a user will occur during the
                                                                first synchronisation after the accounts expiration date.

                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <div class="form-check d-flex justify-content-start">
                                                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck2">
                                                                <label class="form-check-label" for="defaultCheck2">
                                                                    Use Paged Results
                                                                </label>
                                                                <input type="text" style="width:50px;" value="1000" class="form-control mx-2" name="" id="" aria-describedby="helpId"
                                                                    placeholder="">
                                                                <label class="form-check-label" for="defaultCheck2">
                                                                    results per page.
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck2">
                                                                <label class="form-check-label" for="defaultCheck2">
                                                                    Follow Referrals
                                                                </label>
                                                            </div>
                                                            <small id="helpId" class="form-text text-muted form-check">
                                                                Allow the LDAP server to redirect requests to other servers.
                                                            </small>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck2">
                                                                <label class="form-check-label" for="defaultCheck2">
                                                                    Naive DN Matching
                                                                </label>
                                                            </div>
                                                            <small id="helpId" class="form-text text-muted form-check">
                                                                If your directory will always return a consistent string representation of a DN, you can enable naive DN matching. Using
                                                                naive DN matching provides significant performance benefits,
                                                                so we recommend enabling it where possible.

                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck2">
                                                                <label class="form-check-label" for="defaultCheck2">
                                                                    Enable Incremental Synchronization
                                                                </label>
                                                            </div>
                                                            <small id="helpId" class="form-text text-muted form-check">
                                                                Enabling incremental synchronisation causes only changes since the last synchronisation to be queried when synchronising
                                                                a directory.
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            Update group memberships when logging in
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <select class="form-control col-md-8 col-lg-6" name="" id="">
                                                                <option>Everytime the user logs in</option>
                                                                <option>Everytime the user sign in</option>
                                                            </select>
                                                            <small id="helpId" class="form-text text-muted">
                                                                Whether to update the users group memberships on each log in. This ensures the group list is up to date, but can slow down
                                                                authentication.
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            Synchronization Interval (minutes):*
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" style="width:70px;" value="60" class="form-control col-md-8 col-lg-6" id="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                Time to wait between directory updates.
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            Read Timeout(seconds):
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" style="width:70px;" value="120" class="form-control col-md-8 col-lg-6" id="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                Time to waitfor a response to be received. If there is no response within the specified time period, the read attempt will
                                                                be aborted. Value of 0 means there is no limit.
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            Search Timeout(seconds):
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" style="width:70px;" value="60" class="form-control col-md-8 col-lg-6" id="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                Time to wait for a response from a search operation. Value of 0 means there is no limit.
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            Connection Timeout(seconds):
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" style="width:70px;" value="10" class="form-control col-md-8 col-lg-6" id="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                Time to wait when opening new server connections, or getting a connection from the connection pool. Value of 0 means wait
                                                                indefinitely for a pooled connection to become available,
                                                                or to wait for the default TCP fimeoutto take effect when
                                                                creating a new connection.
                                                            </small>
                                                        </div>
                                                    </div>

                                                </form>
                                            </div>
                                        </div>


                                        <button class="btn btn-link ldap-conf-sections collapsed p-0 p-sm-2" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false">
                                            <i class="fa fa-angle-right" aria-hidden="true"></i> User Schema Settings
                                        </button>

                                        <div id="collapseFive" class="collapse" aria-labelledby="headingFive">
                                            <div class=" card card-body border-0 p-0">
                                                <form>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            User Object Class:<span class="" required>* </span>
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" value="user" class="form-control col-md-8 col-lg-6" id="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                The LDAP user object class type to use when loading users.
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            User Object Filter:<span class="" required>* </span>
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" value="(8t(objectCategory=Person)(sAMAccount)" class="form-control col-md-8 col-lg-6"
                                                                id="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                The filter to use when searching user objects.
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            User Name Attribute:<span class="" required>* </span>
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" value="sAMAccountName" class="form-control col-md-8 col-lg-6" id="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                The attribute field to use on the user object. Examples: cn, sAMAccountName.
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            User Name RDN Attribute:<span class="" required> </span>
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" value="cn" class="form-control col-md-8 col-lg-6" id="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                The RDN to use when loading the user username.Example: cn.
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            User First Name Attribute:<span class="" required>* </span>
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" value="givenName" class="form-control col-md-8 col-lg-6" id="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                The attribute field to use when loading the user first name.
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            User Last Name Attribute:<span class="" required>* </span>
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" value="sn" class="form-control col-md-8 col-lg-6" id="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                The attribute field to use when loading the user last name.
                                                            </small>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            User Display Name Attribute:<span class="" required>* </span>
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" value="displayName" class="form-control col-md-8 col-lg-6" id="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                The attribute field to use when loading the user full name.
                                                            </small>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            User Email Attribute:<span class="" required>* </span>
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" value="mail" class="form-control col-md-8 col-lg-6" id="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                The attribute field to use when loading the user email.
                                                            </small>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            User Password Attribute:<span class="" required>* </span>
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" value="unicodePwd" class="form-control col-md-8 col-lg-6" id="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                The attribute field to use when manipulating a user password.
                                                            </small>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            User Unique ID Attribute:<span class="" required> </span>
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" value="objectGUID" class="form-control col-md-8 col-lg-6" id="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                The attribute field to use for tracking user identity across user renames.
                                                            </small>
                                                        </div>
                                                    </div>
                                                </form>

                                            </div>
                                        </div>

                                        <button class="btn btn-link ldap-conf-sections collapsed p-0 p-sm-2" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false">
                                            <i class="fa fa-angle-right" aria-hidden="true"></i> Group Schema Settings
                                        </button>

                                        <div id="collapseSix" class="collapse" aria-labelledby="headingSix">
                                            <div class=" card card-body border-0 p-0">
                                                <form>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            Group Object Class:<span class="" required>* </span>
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" value="group" class="form-control col-md-8 col-lg-6" id="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                LDAP attribute objectClass value to search for when loading groups.
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            Group Object Filter:<span class="" required>* </span>
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" value="&(objectClass=group)(cn=*.IIRAM)" class="form-control col-md-8 col-lg-6" id="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                The filter to use when searching group objects.
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            Group Name Attribute:<span class="" required>* </span>
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" value="cn" class="form-control col-md-8 col-lg-6" id="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                The attribute field to use when loading the group name.
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            Group Description Attribute:<span class="" required>* </span>
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" value="description" class="form-control col-md-8 col-lg-6" id="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                The attribute field to use when loading the group description.
                                                            </small>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>



                                        <button class="btn btn-link ldap-conf-sections collapsed p-0 p-sm-2" data-toggle="collapse" data-target="#collapseSeven"
                                            aria-expanded="false">
                                            <i class="fa fa-angle-right" aria-hidden="true"></i> Member Schema Settings
                                        </button>

                                        <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven">
                                            <div class=" card card-body border-0 p-0">
                                                <form>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            Group Members Attribute:<span class="" required>* </span>
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" value="member" class="form-control col-md-8 col-lg-6" id="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                The attribute field to use when loading the group members from the group.
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            User Membership Attribute:<span class="" required>* </span>
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <input type="text" value="memberOf" class="form-control col-md-8 col-lg-6" id="">
                                                            <small id="helpId" class="form-text text-muted">
                                                                The attribute field to use when loading a users groups.
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-2">
                                                        <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">
                                                            Use the User Membership Attribute:<span class="" required> </span>
                                                        </label>
                                                        <div class="col-sm-6 col-md-7">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                                                <label class="form-check-label" for="defaultCheck1">
                                                                    When finding user's group membership
                                                                </label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                                                <label class="form-check-label" for="defaultCheck1">
                                                                    when finding members of a group
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </form>

                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-12 px-3 mt-3">
                                        <div class=" card card-body border-0 p-0">
                                            <div class="form-group row mb-2">
                                                <label for="" class="col-sm-4 col-md-3 col-form-label    text-sm-right">

                                                </label>
                                                <div class="col-sm-6 col-md-7">
                                                    <a name="" id="" class="btn   btn-primary" href="javascript:void(0);" role="button">Save
                                                        and Test</a>
                                                    <a name="" id="" class="btn   btn-simple " href="javascript:void(0);" role="button">Quick
                                                        Test
                                                    </a>
                                                    <a name="" id="" class="btn   btn-simple" href="javascript:void(0);" role="button">Cancel</a>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mx-1 py-2">
                        <div class="col-12">
                            <div class="d-flex justify-content-between align-items-center ">
                            <ul class="nav ">
                                  <li class="nav-item ">
										<a class="nav-link px-2 border-right" href="../module-manager.jsp">Module Manager</a>
									</li>
								
                                    <li class="nav-item ">
                                        <a class="nav-link px-2 " href="administration.html">Administration</a>
                                    </li>
                                </ul>
                                <img class=" " src="./../../img/smLogoDark.png">
                            </div>
                        </div>
                    </div>
                </div>
			</div>
		</div>
	</main>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js "></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js " integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh "
	 crossorigin="anonymous "></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js " integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ "
	 crossorigin="anonymous "></script>
	<script src="/resources/js/index.js "></script>

</body>

</html>