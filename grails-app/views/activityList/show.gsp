
<%@ page import="listcross.ActivityList" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'activityList.label', default: 'ActivityList')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-activityList" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
		<g:form>
		<g:hiddenField name="id" value="${activityListInstance?.id}" />
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>				
				<li><g:link controller="logout">Sign Out</g:link></li>
			
			</ul>
		</g:form>
		</div>
		
		<div id="show-activityList" class="content scaffold-show" role="main">
			<g:render template="showCenter"
								model="${['activityListInstance':activityListInstance, 'user':user]}" />
		</div>
				
		
	</body>
</html>
