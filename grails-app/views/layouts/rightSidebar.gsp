<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>

<title><g:layoutTitle default="ListCross" /></title>

<g:javascript library="application" />
<modalbox:modalIncludes />

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<script src="js/jquery.min.js"></script>
<script src="js/config.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-panels.min.js"></script>

<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'skel-noscript.css')}"
	type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}"
	type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'listcross.css')}"
	type="text/css">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'style-desktop.css')}"
	type="text/css">

<g:layoutHead />
<r:layoutResources />
</head>
<body>
	
	<!-- Header Wrapper -->
	<div id="header-wrapper">
		<div class="container">
			<div class="row">
				<div class="12u">

					<!-- Header -->
					<header id="header">
						<!-- Logo -->
						<div id="logo">
							<h1>
								<img src="${resource(dir: 'images', file: 'checkbox.png')}" />
								<a href="#" id="logo">listCROSS</a>
							</h1>
							<!-- <span>Live Life Offline.</span>-->
						</div>
						<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><g:link controller="dashboard" action="dashboard">Home</g:link></li>
								<li><g:link controller="activityList" action="list">My lists</g:link></li>
								<li><a href="#">About listCross</a></li>
								<li><g:link controller="logout">Log Out</g:link></li>
							</ul>
						</nav>
					</header>

				</div>
			</div>
		</div>
	</div>

	<g:layoutBody />
	<g:javascript library="application" />
	<r:layoutResources />

	<!-- Footer Wrapper -->
	<div id="footer-wrapper">
		<footer id="footer" class="container">
<%--			<div class="row">--%>
<%--				<div class="3u">--%>
<%----%>
<%--					<!-- Links -->--%>
<%--					<section class="widget-links">--%>
<%--						<h2>Random Stuff</h2>--%>
<%--						<ul class="style2">--%>
<%--							<li><a href="#">Etiam feugiat condimentum</a></li>--%>
<%--							<li><a href="#">Aliquam imperdiet suscipit odio</a></li>--%>
<%--							<li><a href="#">Sed porttitor cras in erat nec</a></li>--%>
<%--							<li><a href="#">Felis varius pellentesque potenti</a></li>--%>
<%--							<li><a href="#">Nullam scelerisque blandit leo</a></li>--%>
<%--						</ul>--%>
<%--					</section>--%>
<%----%>
<%--				</div>--%>
<%--				<div class="3u">--%>
<%----%>
<%--					<!-- Links -->--%>
<%--					<section class="widget-links">--%>
<%--						<h2>Random Stuff</h2>--%>
<%--						<ul class="style2">--%>
<%--							<li><a href="#">Etiam feugiat condimentum</a></li>--%>
<%--							<li><a href="#">Aliquam imperdiet suscipit odio</a></li>--%>
<%--							<li><a href="#">Sed porttitor cras in erat nec</a></li>--%>
<%--							<li><a href="#">Felis varius pellentesque potenti</a></li>--%>
<%--							<li><a href="#">Nullam scelerisque blandit leo</a></li>--%>
<%--						</ul>--%>
<%--					</section>--%>
<%----%>
<%--				</div>--%>
<%--				<div class="3u">--%>
<%----%>
<%--					<!-- Links -->--%>
<%--					<section class="widget-links">--%>
<%--						<h2>Random Stuff</h2>--%>
<%--						<ul class="style2">--%>
<%--							<li><a href="#">Etiam feugiat condimentum</a></li>--%>
<%--							<li><a href="#">Aliquam imperdiet suscipit odio</a></li>--%>
<%--							<li><a href="#">Sed porttitor cras in erat nec</a></li>--%>
<%--							<li><a href="#">Felis varius pellentesque potenti</a></li>--%>
<%--							<li><a href="#">Nullam scelerisque blandit leo</a></li>--%>
<%--						</ul>--%>
<%--					</section>--%>
<%----%>
<%--				</div>--%>
<%--				<div class="3u">--%>
<%----%>
<%--					<!-- Contact -->--%>
<%--					<section class="widget-contact last">--%>
<%--						<h2>Contact Us</h2>--%>
<%--						<ul>--%>
<%--							<li><a href="#" class="twitter">Twitter</a></li>--%>
<%--							<li><a href="#" class="facebook">Facebook</a></li>--%>
<%--							<li><a href="#" class="dribbble">Dribbble</a></li>--%>
<%--							<li><a href="#" class="googleplus">Google+</a></li>--%>
<%--						</ul>--%>
<%--						<p>--%>
<%--							1234 Fictional Road Suite #5432<br /> Nashville, Tennessee--%>
<%--							00000-0000<br /> (800) 555-0000--%>
<%--						</p>--%>
<%--					</section>--%>
<%----%>
<%--				</div>--%>
<%--			</div>--%>
			<div class="row">
				<div class="12u">
					<div id="copyright">
						&copy; listCross. All rights reserved. | Design: <a
							href="http://html5up.net/">HTML5 UP</a>
					</div>
				</div>
			</div>
		</footer>
	</div>

</body>
</html>