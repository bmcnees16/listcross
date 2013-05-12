<%@ page import="listcross.Rating" %>


<div class="fieldcontain ${hasErrors(bean: ratingInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="rating.comments.label" default="Comments" />
		
	</label>
	<g:textField name="comments" value="${ratingInstance?.comments}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ratingInstance, field: 'rating', 'error')} required">
	<label for="rating">
		<g:message code="rating.rating.label" default="Rating" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="rating" required="" value="${fieldValue(bean: ratingInstance, field: 'rating')}"/>
</div>

<g:hiddenField name="activity.id" value="${ratingInstance?.activity?.id}" />
<g:hiddenField name="user.id" value="${ratingInstance?.user?.id}" />