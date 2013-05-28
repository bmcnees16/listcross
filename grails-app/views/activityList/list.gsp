
<%@ page import="listcross.ActivityList"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<link rel="stylesheet" href="${resource(dir: 'css', file: '2col.css')}"
	type="text/css">
<g:set var="entityName"
	value="${message(code: 'activityList.label', default: 'ActivityList')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#list-activityList" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="create" action="create">Create a New List</g:link></li>
		</ul>
	</div>

	<div id="show-category" class="content scaffold-show" role="main">
		<g:render template="listCenter"
			model="${['activityListInstance':activityListInstance,'user':user]}" />
	</div>

</body>
</html>
