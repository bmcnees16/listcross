
<%@ page import="listcross.ActivityList"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="rightSidebar">
<g:set var="entityName"
	value="${message(code: 'activityList.label', default: 'ActivityList')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
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
								All of the lists for:
								${user.firstName}
								${user.lastName}
								
							</h2>
							
							<g:if test="${flash.message}">
								<div class="message" role="status">
									${flash.message}
								</div>
							</g:if>
							<table>
								<thead>
									<tr>
										
										<g:sortableColumn property="description"
											title="${message(code: 'activityList.description.label', default: 'Description')}" />

										<g:sortableColumn property="title"
											title="${message(code: 'activityList.title.label', default: 'Title')}" />

									</tr>
								</thead>
								<tbody>
									<g:each in="${activityListInstanceList}" status="i"
										var="activityListInstance">
										<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

											<td><g:link action="show"
													id="${activityListInstance.id}">
													${fieldValue(bean: activityListInstance, field: "description")}
												</g:link></td>

											<td>
												${fieldValue(bean: activityListInstance, field: "title")}
											</td>

										</tr>
									</g:each>
								</tbody>
							</table>
							<div class="pagination">
								<g:paginate total="${activityListInstanceTotal}" />
							</div>
							
						</article>
					</div>

				</div>
				<div class="4u">

					<!-- Sidebar -->
					<div id="sidebar">
						<section>
							<modalbox:createLink controller="dashboard"
												action="newList" title="New List!" width="600">
												<div
													class="button button-big button-icon button-icon-paper">New List</div>
											</modalbox:createLink>
						</section>
						<section>
							<h3>Cohorts</h3>
							<ul><li><a href="#">Person 1 (8)</a></li>
							<li><a href="#">Person 2 (6)</a></li>
							<li><a href="#">Person 3 (5)</a></li></ul>
							<footer>
								<a href="#" class="button button-icon button-icon-info">All my Cohorts</a>
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


</body>
</html>
