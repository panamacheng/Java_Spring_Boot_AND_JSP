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

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="<c:url value="/resources/css/master.css" />" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/login.css" />" />
    <script type="text/javascript" src="<c:url value="/resources/js/modernizr.custom.26633.js" />" ></script>
    <noscript>
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/fallback.css" />" />
    </noscript>

</head>

<body onload="document.formlogin.username.focus();" 
	style="background:#8392a9; overflow-y: scroll;">

    <!-- Codrops top bar -->
    <section class="main"> 

        <div id="ri-grid" class="ri-grid ri-grid-size-2">
            <img class="ri-loading-image" style="margin:2.5rem 0px;" src="<c:url value="/resources/img/loading.gif" />" >"
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
            <h1>Login</h1>
        </div>
    </section>
    <div class="col  " style="background: #b6bec8;">
        <div class="row" id="loginForm1">
            <div style="margin:6rem auto 6rem;">
                <div class="card center-area bg-transparent border-0">
                    <div class="card-body d-flex justify-content-around">
                        <div id="loginForm">
                            <form class="form-horizontal" 
                            	action="${pageContext.request.contextPath}/login" 
                            	name="formlogin"
                            	method="POST">
                            	
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1"><i class="fa fa-user"></i></span>
                                    </div>
                                    <input id="username" type="text" class="form-control" name="username" placeholder="username">
                                </div>
                                
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1"><i class="fa fa-lock"></i></span>
                                    </div>
                                    <input id="password" type="password" class="form-control" name="password"
                                        placeholder="password">
                                </div>
								
								
                                <div class="form-group">
                                    <!-- Button -->
                                    <div class="col-sm-12 controls" style="margin-top:15px"></div>
                                    <button class="btn btn-primary pull-left" type="submit">login</button>
                                </div>

                                <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
                            </form>
                        </div>
						
                        <div class="ml-3">
                            <img src="<c:url value="/resources/img/icnAppIMG.png" />" style="margin-top: -15px">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="col-12 py-3 d-sm-flex justify-content-between align-items-center">
            <div class=" text-white float-sm-left text-center my-2"> &#169; Navaera Sciences, LLC</div>
            <div class=" text-white float-sm-left text-center my-2">  <img src="<c:url value="/resources/img/nlogo.png" />" /></div>
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
    <script type="text/javascript" src="<c:url value="/resources/js/jquery.gridrotator.js" />" ></script>
    <script type="text/javascript">
        $(function () {
            $('#ri-grid').gridrotator({
                rows: 3,
                columns: 15,
                animType: 'fadeInOut',
                animSpeed: 1000,
                interval: 600,
                step: 1,
                w320: {
                    rows: 3,
                    columns: 4
                },
                w240: {
                    rows: 3,
                    columns: 4
                }
            });
        });
    </script>
</body>

</html>