<%@ page import="listcross.User" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="rightSidebar">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
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

		<div id="edit-user" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${userInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${userInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form method="post" >
				<g:hiddenField name="id" value="${userInstance?.id}" />
				<g:hiddenField name="version" value="${userInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
		

						</article>
					</div>

				</div>
				<div class="4u">

					<!-- Sidebar -->
					<div id="sidebar">
						

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
