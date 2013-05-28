<%@ page import="listcross.ActivityList" %>


<div class="fieldcontain ${hasErrors(bean: activityListInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="activityList.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${activityListInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityListInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="activityList.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${activityListInstance?.title}"/>
</div>