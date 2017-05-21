
<%@ page import="com.company.Company" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="" />
        <link type="text/css" rel="stylesheet" href="${resource(dir:'css',file:'bootstrap/bootstrap.min.css')}">
<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<link type="text/css" rel="stylesheet" href="${resource(dir:'css',file:'AdminLTE.min.css')}">
<link type="text/css" rel="stylesheet" href="${resource(dir:'css/skins',file:'_all-skins.min.css')}">
<link type="text/css" rel="stylesheet" href="${resource(dir:'css/iCheck/flat',file:'blue.css')}">
<link rel="stylesheet" href="${resource(dir:'css',file:'morris.css')}">
<link rel="stylesheet" href="${resource(dir:'css',file:'jquery-jvectormap-1.2.2.css')}">
<link type="text/css" rel="stylesheet" href="${resource(dir:'css/bootstrap',file:'bootstrap3-wysihtml5.min.css')}">
<g:set var="entityName" value="${message(code: 'company.label', default: 'Company')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
    <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
		<header class="main-header">
			<a href="" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>CDE</b></span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>Company</b>-Employee Dashboard</span>
			</a>
			<nav class="navbar navbar-static-top">
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>
			</nav>
		</header>
        <aside class="main-sidebar">
			<section class="sidebar">
				<form action="#" method="get" class="sidebar-form">
					<div class="input-group">
						<input type="text" name="q" class="form-control"
							placeholder="Search..."> <span class="input-group-btn">
							<button type="submit" name="search" id="search-btn"
								class="btn btn-flat">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
				<ul class="sidebar-menu">
					<li class="header">MAIN NAVIGATION</li>
					<li class="treeview"><a href="#"> <span>Companies</span> <span
							class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
					<g:each in="${companyInstanceList}" status="i" var="companyInstance">
                        <ul class="treeview-menu">
							<li style="color:white;padding:0 61px 0">${fieldValue(bean: companyInstance, field: "name")}</li>
						</ul>
                    </g:each>
						
				</ul>
			</section>
		</aside>

		<div class="content-wrapper">
			<section class="content-header">
			</section>
		</div>
		<footer class="main-footer"> </footer>

		<aside class="control-sidebar control-sidebar-dark">
			<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
				<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i
						class="fa fa-home"></i></a></li>
				<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
						class="fa fa-gears"></i></a></li>
			</ul>
		</aside>
		<div class="control-sidebar-bg"></div>
	</div>	
		
		
			<g:javascript src="jQuery/jquery-2.2.3.min.js"/>
	<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<g:javascript src="bootstrap.min.js"/>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
	<g:javascript src="morris.min.js"/>
	<g:javascript src="jquery.sparkline.min.js"/>
	<g:javascript src="jquery-jvectormap-1.2.2.min.js"/>
	<g:javascript src="jquery-jvectormap-world-mill-en.js"/>
	<g:javascript src="jquery.knob.js"/>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<g:javascript src="bootstrap3-wysihtml5.all.min.js"/>
	<g:javascript src="jquery.slimscroll.min.js"/>
	<g:javascript src="fastclick.js"/>
	<g:javascript src="app.min.js"/>
	<g:javascript src="dashboard.js"/>
	<g:javascript src="demo.js"/>
    </body>
</html>
