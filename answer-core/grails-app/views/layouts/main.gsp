<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
		<asset:javascript src="application.js"/>
		<link rel="stylesheet" href="${resource(dir: 'css/bootstrap', file: 'bootstrap.min.css')}" type="text/css" >
		<link rel="stylesheet" href="${resource(dir: 'css/bootstrap', file: 'bootstrap-theme.min.css')}" type="text/css" >
		
		<script type="text/javascript" src="${resource(dir: 'js/angular', file: 'angular.min.js')}"></script>
		<script type="text/javascript" src="${resource(dir: 'js/jquery', file: 'jquery-1.11.3.min.js')}"></script>
		<script type="text/javascript" src="${resource(dir: 'js/bootstrap', file: 'bootstrap.min.js')}"></script>
				
		<g:layoutHead/>
	</head>
	<body>
		
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="${createLink(uri: '/')}"><g:message code="nav.brand.name"/></a>
		    </div>

		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
	          	<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
					<li class="${controllerName.equals(c.logicalPropertyName) ? 'active' : ''}" ><g:link controller="${c.logicalPropertyName}">${c.logicalPropertyName}</g:link></li>
				</g:each>
		      </ul>
		      
		      <ul class="nav navbar-nav navbar-right">
		        <li><a href="#">${controllerName}</a></li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="#">Action</a></li>
		            <li><a href="#">Another action</a></li>
		            <li><a href="#">Something else here</a></li>
		            <li class="divider"></li>
		            <li><a href="#">Separated link</a></li>
		          </ul>
		        </li>
		      </ul>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>

		<div class="row">
			<div class="col-lg-2"></div>
			<div class="col-lg-8">
				<g:layoutBody/>
			</div>
			<div class="col-lg-2"></div>
		</div>
		<g:javascript library="application"/>

		<r:layoutResources />
		
	</body>
</html>
