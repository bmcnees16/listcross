<!doctype html>
<html>
<head>
<meta name="layout" content="dashboard" />
<title>Welcome to ListCross</title>
<g:javascript library="application" />
<modalbox:modalIncludes />
</head>
<body>
	<!-- HEADER WRAPPER -->
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
							<!--<span>Live Life Offline</span>-->
						</div>

						<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="index.html">Home</a></li>
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
	<!-- END HEADER WRAPPER -->

	<!-- Banner Wrapper -->
	<div id="banner-wrapper">
		<div class="container">
			<div class="row">
				<div class="12u">

					<!-- Banner -->
					<div id="banner" class="box">

						<div>
							<div class="row">
								<div class="7u">
									<h2>Live Life Offline.</h2>
									<p>Finally an answer to the question...</p>
									<p>"What do you want to do tonight?"</p>

								</div>
								<div class="5u">
									<ul>
										<li><modalbox:createLink controller="dashboard"
												action="newList" title="New List!" width="600">
												<div
													class="button button-big button-icon button-icon-paper">New List</div>
											</modalbox:createLink></li>
										<li><modalbox:createLink controller="dashboard"
												action="crossIt" title="Cross It!" width="600">
												<div
													class="button button-alt button-big button-icon button-icon-arrow">Cross
													It</div>
											</modalbox:createLink></li>

									</ul>
								</div>
							</div>
						</div>

					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- END BANNER WRAPPER -->


	<!-- Features Wrapper -->
	<div id="features-wrapper">
		<div class="container">
			<div class="row">
				<div class="4u">

					<!-- Box -->
					<section class="box box-feature">
						<a href="#" class="image image-centered"><img
							<img src="${resource(dir: 'images', file: 'user-icon-blue.png')}" /></a>
						<div class="inner">
							<header>
								<h2>My Profile</h2>
								<span class="byline">Who Am I</span>
							</header>
							<ul>
								<li><a href="#">Edit My Profile</a></li>
							</ul>
						</div>
					</section>

				</div>
				<div class="4u">

					<!-- Box -->
					<section class="box box-feature">
						<a href="#" class="image image-centered"><img
							src="${resource(dir: 'images', file: 'checkbox.png')}" alt="" /></a>
						<div class="inner">
							<header>
								<h2>My Lists</h2>
								<span class="byline">What I'm Up To</span>
							</header>
							<ul>
								<g:each in="${activityLists}" var="activityList">
									<li><g:link controller="activityList" action="show"
											id="${activityList.id}">
											${activityList.title}
										</g:link></li>
								</g:each>
							</ul>
						</div>
					</section>

				</div>
				<div class="4u">

					<!-- Box -->
					<section class="box box-feature last">
						<a href="#" class="image image-centered"><img
							src="${resource(dir: 'images', file: 'user-icon-blue-group.png')}"
							alt="" /></a>
						<div class="inner">
							<header>
								<h2>Cohorts</h2>
								<span class="byline">What Others Are Up To</span>
							</header>
							<ul>
								<li><a href="#">Person 1</a></li>
								<li><a href="#">Person 2</a></li>
								<li><a href="#">Person 3</a></li>
							</ul>
						</div>
					</section>

				</div>
			</div>
		</div>
	</div>


	<!-- Main Wrapper -->
	<div id="main-wrapper">
		<div class="container">
			<div class="row">
				<div class="4u">

					<!-- Sidebar -->
					<div id="sidebar">
						<section class="widget-thumbnails">
							<h3>Explore by Category</h3>
							<div class="grid">
								<div class="row persistent half">
									<div class="6u">
										<a href="#" class="image image-full"><img
											src="http://capecodgolfvacations.com/wordpress2/wp-content/uploads/2011/11/golf_course0099.jpg"
											alt="Golf" /></a>
									</div>
									<div class="6u">
										<a href="#" class="image image-full"><img
											src="http://ufiie.org/wp-content/uploads/2012/11/camping.jpg"
											alt="Camping" /></a>
									</div>
								</div>
								<div class="row persistent half">
									<div class="6u">
										<a href="http://html5up.net/arcana/" class="image image-full"><img
											src="http://www.nvtc.ee/e-oppe/Marina/joogid/Beer.jpg"
											alt="Beer" /></a>
									</div>
									<div class="6u">
										<a href="http://html5up.net/zerofour/"
											class="image image-full"><img
											src="http://www.ps3gameroom.com/upload//uploads/images/ps3gameroom.com-753c45200b.gif"
											alt="Movies" /></a>
									</div>
								</div>
							</div>
							<a href="#" class="button button-icon button-icon-paper">More</a>
						</section>
					</div>

				</div>
				<div class="8u">

					<!-- Content -->
					<div id="content">
						<section class="last">
							<h2>So what's this all about?</h2>
							<p>-
							<h1>Welcome to ListCross</h1>
							<p>Have you ever found it difficult to answer the question
								"What do you want to do tonight?" Or have you ever thought to
								yourself... I should get out of my comfort zone and try
								something new. Maybe go to all 50 states. Maybe try the best
								Italian restaurants in town. Maybe read the top 10 best classic
								novels. Or try all the beer that is brewed in your state.
								Whatever hobby you have in mind, you need a place to keep you on
								track. That's where ListCross comes in. You can set up Lists
								that you want to do and then cross them off as you do them. And
								best of all, you won't be doing this alone. ListCross allows you
								to do Lists with people and complete them together.</p>
							<p>Get out of your comfort zone. Try something new. Cross it.

							</p>
							<p>Like what you see here? Click the hugeass button below to
								see more of our work:</p>
							<a href="http://html5up.net/"
								class="button button-icon button-icon-rarrow">More @ HTML5
								UP</a>
						</section>
					</div>

				</div>
			</div>
		</div>
	</div>
	
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
