
<%@ page import="listcross.ActivityList"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="rightSidebar">
<g:set var="entityName"
	value="${message(code: 'activityList.label', default: 'ActivityList')}" />
<title>My Lists</title>
</head>
<body>
	
	
	<!-- Main Wrapper -->
	<div id="main-wrapper">
		<div class="container">
			<div class="row">
				<div class="8u skel-cell-mainContent">

					<!-- Content -->
					<div id="content">
						<article class="last">

							<h2>
								${activityListInstance?.title}
							</h2>
							<div id="subheadingText">
								${activityListInstance?.description}
							</div>

							<g:if test="${flash.message}">
								<div class="message" role="status">
									${flash.message}
								</div>
							</g:if>
							<ol class="property-list activityList">

								<g:if test="${activityListInstance?.activities}">

									<li class="fieldcontain">
										<table>
											<thead>
												<tr>
													<g:sortableColumn property="description"
														title="Description" />
												</tr>
											</thead>
											<tbody>
												<g:each in="${activityListInstance.activities}" status="i"
													var="a">

													<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
														<td><g:link controller="activity" action="show"
																id="${a.id}">
																${a.description}
															</g:link></td>
													</tr>
												</g:each>
											</tbody>
										</table>
									</li>
								</g:if>


							</ol>

						</article>
					</div>

				</div>
				<div class="4u">

					<!-- Sidebar -->
					<div id="sidebar">
						<section>
							<g:link controller="activityList" action="edit"
										class="button button-big button-icon button-icon-paper"
										action="edit" id="${activityListInstance.id}">Edit</g:link>
						</section>
						<section>
							<h3>List Cohorts</h3>
							<ul>
								<g:each in="${activityListInstance.users}" var="u">
									<li>
										${u.firstName} ${u.lastName} <g:link controller="activityList"
											action="remove" id="${activityListInstance.id}"
											params="[userid:u.id]">Remove</g:link>
									</li>
								</g:each>
								<li><g:link controller="activityList" action="addition"
										id="${activityListInstance.id}">Add someone else</g:link></li>
							</ul>

							<footer>
								<a href="#" class="button button-icon button-icon-info">All
									my Cohorts</a>
							</footer>
						</section>

						<section>
							<h3>Ads</h3>
							<ul class="style2">
								<li><a href="#">Amet turpis, feugiat et sit amet</a></li>
								<li><a href="#">Ornare in hendrerit in lectus</a></li>
								<li><a href="#">Semper mod quis eget mi dolore</a></li>
								<li><a href="#">Quam turpis feugiat sit dolor</a></li>
								<li><a href="#">Amet ornare in hendrerit in lectus</a></li>
								<li><a href="#">Semper mod quisturpis nisi</a></li>
							</ul>
						</section>

					</div>

				</div>
			</div>
		</div>
	</div>



<script type='text/javascript'>
	<!--
		(function() {
			document.forms['loginForm'].elements['j_username'].focus();
		})();
	// -->
	</script>
</body>
</html>
