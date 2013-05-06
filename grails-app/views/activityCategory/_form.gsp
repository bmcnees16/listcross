<%@ page import="listcross.ActivityCategory" %>



<div class="fieldcontain ${hasErrors(bean: activityCategoryInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="activityCategory.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${activityCategoryInstance?.description}"/>
</div>

