
<%@ page import="listcross.Activity" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'activity.label', default: 'Activity')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-activity" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-activity" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list activity">
			
				<g:if test="${activityInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="activity.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:link controller="activityCategory" action="show" id="${activityInstance?.category?.id}">${activityInstance?.category?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
				
				<li class="fieldcontain">
					<span id="listCrossLists-label" class="property-label">Included in the lists:</span>
					
						<g:each in="${activityInstance.listCrossLists}" var="l">
						<span class="property-value" aria-labelledby="listCrossLists-label"><g:link controller="activityList" action="show" id="${l.id}">${l.title}</g:link></span>
						</g:each>
					
				</li>
				
				<g:if test="${activityInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="activity.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${activityInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				
				
				
				<g:if test="${activityInstance?.ratings}">
				<li class="fieldcontain">
					<span id="ratings-label" class="property-label"><g:message code="activity.ratings.label" default="Ratings" /></span>
					
						<g:each in="${activityInstance.ratings}" var="r">
						<span class="property-value" aria-labelledby="ratings-label"><g:link controller="rating" action="show" id="${r.id}">${r.user.firstName}: ${r.rating}<br />${r.comments}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${activityInstance?.id}" />
					<g:link class="edit" action="edit" id="${activityInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
