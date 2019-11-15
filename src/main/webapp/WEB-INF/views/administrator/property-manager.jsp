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
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/vendor/chosen_v1.8.2/chosen.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/jqx.base.css" type="text/css" />
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/jqxGridStyle.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/master.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/custom.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/image-uploader.css">

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
				.userSelect{
					display: none;
				}
	</style>
</head>

<body>
    <!--  header section -->
    <main>
        <header class="header">
            <nav class="navbar navbar-expand-lg navbar-light pt-2 px-4 d-flex justify-content-between align-items-center">
                <a class="navbar-brand m-0 p-0 text-light" href="#">Navaera AI -  Module Manager</a>
                <div class="form-group col col-md-6 m-0">
            
                </div>
                <div class="btn-group ">
                    <button type="button" class="btn btn-light rounded border-0 p-0" data-toggle="dropdown"
                        aria-expanded="false">
                        <!-- <i class="fa fa-user-o" aria-hidden="true"></i> -->
                        <img src="<%=request.getContextPath() %>/resources/img/avatar.PNG" height="35px" />
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
                                    <li class="breadcrumb-item  pl-2"> Property Manager</li>

                                </ol>
                                <!-- <a class="nav-link d-flex justify-content-center align-items-center p-0" href="javascript:showFavorableBar();">
                                    <i class="fa fa-heart-o fa-lg favourite-icon pt-2" aria-hidden="true"></i>
                                </a> -->
                            </nav>
                            <div class="content card mx-4 ">
                                <div class="row">
                                    <div class="col">
                                        <ul class="nav nav-tabs droptabs mt-2" id="myTab">
                                            <li class="nav-item">
                                                <a class="nav-link active" href="#manage" data-toggle="tab">Manage</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#add" data-toggle="tab">Add</a>
                                            </li>
                                        </ul>
                                        <div class="tab-content mt-2">
                                            <div class="tab-pane pt-2 active" id="manage">
                                                <h4 class="mb-4">Property Manager</h4>
                                                <div id="jqxgrid3" class="refresh mb-3" style="width:100% !important; font-family:Arial, Helvetica, sans-serif">
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6 col-md-4">
                                                        <div class="input-group mb-3">
                                                            <input type="text" class="form-control" placeholder="search">
                                                            <div class="input-group-append">
                                                                <button class="btn    btn-primary" type="button">search
                                                                    property</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <button type="button" name="" id="" class="btn  btn-primary float-right ml-3">
                                                    delete property </button>
                                                <button type="button" name="" id="" class="btn btn-primary float-right">
                                                    refresh </button>
                                            </div>
                                            <div class="tab-pane  pt-2" id="add">
                                                <h4 class="mb-4">Add New Property</h4>
                                                <div class="row mt-3">
                                                    <div class="form-group col-sm-6 col-md-6 col-lg-3">
                                                        <label for="">Property Key</label>
                                                        <input type="text" class="form-control " name="" id=""
                                                            aria-describedby="helpId" placeholder="property key">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                        <div class="form-group col-sm-6 col-md-6 col-lg-3">
                                                        <label for="">Property Value</label>
                                                        <input type="text" class="form-control " name="" id=""
                                                            aria-describedby="helpId" placeholder="property value">
                                                    </div>                                                    
                                                </div>
                                                <button type="button" name="" id="" class="btn  btn-primary">
                                                    add property </button>
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
                                <img class=" " src="<%=request.getContextPath() %>/resources/img/smLogoDark.png">
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
    <script src="<%=request.getContextPath() %>/resources/js/index.js "></script>

    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/grid/jqxcore.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/grid/jqxdata.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/grid/jqxbuttons.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/grid/jqxscrollbar.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/grid/jqxmenu.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/grid/jqxcheckbox.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/grid/jqxlistbox.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/grid/jqxdropdownlist.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/grid/jqxgrid.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/grid/jqxgrid.sort.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/grid/jqxgrid.pager.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/grid/jqxgrid.selection.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/grid/jqxgrid.edit.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/grid/jqxgrid.columnsresize.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/grid/jqxpanel.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/grid/jqxgrid.filter.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            var data3 = new Array();
            var rowscount3;
            if (rowscount3 == undefined) rowscount3 = 20;
            var propertyIdValues = [
                1, 2, 3, 4, 5, 6, 7, 8, 9, 10
            ];
            var propertyNameValues = [
                "RESFEED_CYCLETIME_MINUTES", "RESFEED_CYCLETIME_SECONDS", "RESFEED_CYCLETIME_MINUTES"
            ];
            var propertyValues = [20, 3, 1, 0]

            for (var i = 0; i < rowscount3; i++) {
                var row = {};
                var namesindex = Math.floor(Math.random() * propertyNameValues.length);
                var propertyId = propertyIdValues[namesindex];
                var propertyName = propertyNameValues[namesindex];
                var propertyValue = propertyValues[namesindex];

                row["propertyId"] = propertyIdValues[namesindex];
                row["propertyName"] = propertyNameValues[namesindex];
                row["propertyValue"] = propertyValues[namesindex];
                data3[i] = row;
            }

            var columnsrenderer2 = function (value) {
                return '<div style=" margin-top: 5px; margin-left: 15px;">' + value + '</div>';
            }
            var cellsrenderer2 = function (row, column, value) {
                return '<div style=" margin-top: 5px; margin-left: 15px;">' + value + '</div>';
            }
            var columnsrenderer = function (value) {
                return '<div style="text-align: center; margin-top: 5px;">' + value + '</div>';
            }
            var cellsrenderer = function (row, column, value) {
                return '<div style="text-align: center; margin-top: 5px;">' + value + '</div>';
            }
            var source3 = {
                localdata: data3,
                datatype: "array",
                datafields: [
                    { name: 'propertyId', type: 'string' },
                    { name: 'propertyName', type: 'string' },
                    { name: 'propertyValue', type: 'string' },
                    { name: 'delete', type: 'bool' },
                ]
            };
            var dataAdapter3 = new $.jqx.dataAdapter(source3);

            $("#jqxgrid3").jqxGrid(
                {
                    width: '100%',
                    filterable: false,
                    source: dataAdapter3,
                    sortable: true,
                    pageable: true,
                    autoheight: true,
                    columnsresize: true,
                    pagesize: 5,
                    pagermode: 'simple', // simple pager mode 
                    columns: [
                        { text: 'Property Id', datafield: 'propertyId', renderer: columnsrenderer2, cellsrenderer: cellsrenderer2, width: '20%' },
                        { text: 'Property Name', datafield: 'propertyName', renderer: columnsrenderer2, cellsrenderer: cellsrenderer2, width: '50%' },
                        { text: 'Property Value', datafield: 'propertyValue', renderer: columnsrenderer2, cellsrenderer: cellsrenderer2, width: '15%' },
                        { text: 'Delete', datafield: 'delete', renderer: columnsrenderer, cellsrenderer: cellsrenderer, columntype: 'checkbox', width: '15%' },
                    ]
                });
        });
    </script>
</body>

</html>