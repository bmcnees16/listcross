<%@ page import="listcross.Activity" %>



<div class="fieldcontain ${hasErrors(bean: activityInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="activity.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${listcross.ActivityCategory.list()}" optionKey="id" required="" value="${activityInstance?.category?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="activity.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${activityInstance?.description}"/>
</div>

