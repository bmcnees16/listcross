<%@ page import="listcross.Rating" %>



<div class="fieldcontain ${hasErrors(bean: ratingInstance, field: 'activity', 'error')} required">
	<label for="activity">
		<g:message code="rating.activity.label" default="Activity" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="activity" name="activity.id" from="${listcross.Activity.list()}" optionKey="id" required="" value="${ratingInstance?.activity?.id}" class="many-to-one"/>
</div>

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


<g:field type="number" name="user" value="${ratingInstance?.user?.id}" />

