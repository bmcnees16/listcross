<div id="show-activityList" class="content scaffold-show" role="main">
	<h1>
		${activityListInstance?.title}
	</h1>
	<div id="subheadingText">
		${activityListInstance?.description}
		<br /> <br />
		<g:link controller="activity" action="create"
			id="${activityListInstance.id}">Add a new Activity to this List</g:link>
		<br /><br />
		<div id="userList">
			<b>Users Crossing from this List:</b>
			<ul>
				<g:each in="${activityListInstance.users}" var="u">
					<li>
						${u.firstName} ${u.lastName}
						<g:link controller="activityList" action="remove" id="${activityListInstance.id}" params="[userid:u.id]">Remove</g:link>
					</li>
				</g:each>
				<li><g:link controller="activityList" action="addition" id="${activityListInstance.id}">Add someone else</g:link></li>
			</ul>
		</div>
	</div>



	<g:if test="${flash.message}">
		<div class="message" role="status">
			${flash.message}
		</div>
	</g:if>
	<ol class="property-list activityList">

		<g:if test="${activityListInstance?.activities}">

			<li class="fieldcontain">
				<table>
					<thead>
						<tr>
							<g:sortableColumn property="description" title="Description" />
						</tr>
					</thead>
					<tbody>
						<g:each in="${activityListInstance.activities}" status="i" var="a">

							<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								<td><g:link controller="activity" action="show"
										id="${a.id}">
										${a.description}
									</g:link></td>
							</tr>
						</g:each>
					</tbody>
				</table>
			</li>
		</g:if>


	</ol>


</div>
<fieldset class="buttons">
	<g:hiddenField name="id" value="${activityListInstance?.id}" />
	<g:link class="edit" action="edit" id="${activityListInstance?.id}">
		<g:message code="default.button.edit.label" default="Edit" />
	</g:link>
	<g:actionSubmit class="delete" action="delete"
		value="${message(code: 'default.button.delete.label', default: 'Delete')}"
		onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
</fieldset>