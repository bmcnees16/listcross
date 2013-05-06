<%@ page import="listcross.ActivityList" %>



<div class="fieldcontain ${hasErrors(bean: activityListInstance, field: 'activities', 'error')} ">
	<label for="activities">
		<g:message code="activityList.activities.label" default="Activities" />
		
	</label>
	<g:select name="activities" from="${listcross.Activity.list()}" multiple="multiple" optionKey="id" size="5" value="${activityListInstance?.activities*.id}" class="many-to-many"/>
</div>

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

