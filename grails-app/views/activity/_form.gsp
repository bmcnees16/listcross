<%@ page import="listcross.Activity" %>



<div class="fieldcontain ${hasErrors(bean: activityInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="activity.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${activityInstance?.description}"/>
</div>

<g:hiddenField name="activityListId" value="${activityListId}" />