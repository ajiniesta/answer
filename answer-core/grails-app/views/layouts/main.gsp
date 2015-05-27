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
		
		<g:layoutHead/>
	</head>
	<body>
		
		<div class="row">
			<div class="col-lg-2"></div>
			<div class="col-lg-8">
				<g:layoutBody/>
			</div>
			<div class="col-lg-2"></div>
		</div>
		<g:javascript library="application"/>

		<r:layoutResources />
		<script type="text/javascript" src="${resource(dir: 'js/angular', file: 'angular.min.js')}"></script
		<script type="text/javascript" src="${resource(dir: 'js/jquery', file: 'jquery-1.11.3.min.js')}"></script>
		<script type="text/javascript" src="${resource(dir: 'js/bootstrap', file: 'bootstrap.min.js')}"></script>
	</body>
</html>
