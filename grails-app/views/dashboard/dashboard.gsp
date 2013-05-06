<html>

<head>
<meta name="layout" content="main">
<title>ListCross Home Page</title>

<link rel="stylesheet" href="${resource(dir: 'css', file: '3col.css')}" type="text/css">

</head>
<body>

	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="#"><g:message
						code="default.home.label" /></a></li>
			<li><g:link controller="logout">Sign Out</g:link></li>
		</ul>
	</div>
	<div id="dashboard" class="content scaffold-list" role="main">
		
		<div id="maincontainer">
			<!-- CENTER COLUMN -->
			<div id="contentwrapper">
				<div id="contentcolumn">
					<div class="innertube">
						<div id="contentPane">
							<g:render template="content"
								model="${['activityLists':activityLists]}" />
						</div>
					</div>
				</div>
			</div>
			
			<!-- LEFT COLUMN -->
			<div id="leftcolumn">
				<div class="innertube">
					<g:render template="leftNav"
						model="${['user':user, 'activityLists':activityLists]}" />
				</div>

			</div>

			<!-- RIGHT COLUMN -->
			<div id="rightcolumn">
				<div class="innertube">
					<b>Future Ads</b>
				</div>
			</div>

		</div>

	</div>
</body>
</html>