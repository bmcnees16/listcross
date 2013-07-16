<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		
		<title><g:layoutTitle default="ListCross"/></title>
		
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		
		<script src="js/jquery.min.js"></script>
		<script src="js/config.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'skel-noscript.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'style-desktop.css')}" type="text/css">
		
		<g:layoutHead/>
        <r:layoutResources />
	</head>
	<body>
		<!-- the dashboard layout does not contain any components here because the layout is not standard.
		meaning that there is data in what is considered to be the header of every other page -->
		<g:layoutBody />
		<g:javascript library="application"/>
        <r:layoutResources />
	</body>
</html>