<h1>Create new Activity List</h1>
<g:form controller="activityList" action="save">
	<div
		class="fieldcontain ${hasErrors(bean: activityListInstance, field: 'title', 'error')} ">
		<label for="title"> <g:message code="activityList.title.label"
				default="Title" />

		</label>
		<g:textField name="title" value="${activityListInstance?.title}" />
	</div>
	
	<div>
		<label for="description"> <g:message
				code="activityList.description.label" default="Description" />
		</label>
		<g:textField name="description"
			value="${activityListInstance?.description}" />
	</div>

	
	<fieldset class="buttons">
		<g:submitButton name="create" class="save" value="Save" />
	</fieldset>
</g:form>