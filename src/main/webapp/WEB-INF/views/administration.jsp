<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
    <title>Navaera – [Navaera AI]</title>
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
.figure>a>i.fa {
    background-color: #ccc !important;
    color: #00245d;
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
                    <button type="button" class="btn btn-light rounded border-0 p-0" data-toggle="dropdown"
                        aria-expanded="false">
                        <!-- <i class="fa fa-user-o" aria-hidden="true"></i> -->
                        <img src="/resources/img/avatar.PNG" height="35px" />
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
                    <a class="nav-link d-flex justify-content-center align-items-center" href="home.html">
                        <i class="fa fa-home " aria-hidden="true"></i>
                    </a>
              
                </li>
                <li class="nav-item ">
                    <a class="nav-link d-flex justify-content-center align-items-center " href="administrator.html">
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
                                </ol>
                            </nav>
                            <div class="content card mx-4 ">
                                <div class="row">
                                    <div class="col-md px-3  text-center text-sm-left">
                                        <figure class="figure text-center p-3 ">
                                            <a href="administrator/property-manager.jsp">
                                                <i class="fa fa-3 fa-briefcase p-4 rounded-circle" aria-hidden="true"></i>
                                                <figcaption class="figure-caption text-center pt-2">Property Manager.</figcaption>
                                            </a>
                                        </figure>
                                        <figure class="figure text-center p-3 ">
                                            <a href="administrator/ldap-configuration.jsp" class="">
                                                <i class="fa fa-3 fa-briefcase p-4 rounded-circle" aria-hidden="true"></i>
                                                <figcaption class="figure-caption text-center pt-2">LDAP Configuration.</figcaption>
                                            </a>
                                        </figure>
                                     
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mx-1 py-2">
                        <div class="col-12">
                            <div class="d-sm-flex justify-content-between align-items-center ">
                                <ul class="nav ">
                                  <li class="nav-item ">
										<a class="nav-link px-2 border-right" href="../module-manager.jsp">Module Manager</a>
									</li>
								
                                    <li class="nav-item ">
                                        <a class="nav-link px-2 " href="administration.jsp">Administration</a>
                                    </li>
                                </ul>
                                <img class=" " src="./../img/smLogoDark.png">
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

    <script type="text/javascript" src="/resources/js/grid/jqxcore.js"></script>
    <script type="text/javascript" src="/resources/js/grid/jqxdata.js"></script>
    <script type="text/javascript" src="/resources/js/grid/jqxbuttons.js"></script>
    <script type="text/javascript" src="/resources/js/grid/jqxscrollbar.js"></script>
    <script type="text/javascript" src="/resources/js/grid/jqxmenu.js"></script>
    <script type="text/javascript" src="/resources/js/grid/jqxcheckbox.js"></script>
    <script type="text/javascript" src="/resources/js/grid/jqxlistbox.js"></script>
    <script type="text/javascript" src="/resources/js/grid/jqxdropdownlist.js"></script>
    <script type="text/javascript" src="/resources/js/grid/jqxgrid.js"></script>
    <script type="text/javascript" src="/resources/js/grid/jqxgrid.sort.js"></script>
    <script type="text/javascript" src="/resources/js/grid/jqxgrid.pager.js"></script>
    <script type="text/javascript" src="/resources/js/grid/jqxgrid.selection.js"></script>
    <script type="text/javascript" src="/resources/js/grid/jqxgrid.edit.js"></script>
    <script type="text/javascript" src="/resources/js/grid/jqxgrid.columnsresize.js"></script>
    <script type="text/javascript" src="/resources/js/grid/jqxpanel.js"></script>
    <script type="text/javascript" src="/resources/js/grid/jqxgrid.filter.js"></script>
    <script src="/resources/js/index.js "></script>

</body>

</html>