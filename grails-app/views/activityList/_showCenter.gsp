<div id="show-activityList" class="content scaffold-show" role="main">
	<h1>
		${activityListInstance?.title}
	</h1>
	<div id="subheadingText">
		${activityListInstance?.description}
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

							<g:sortableColumn property="category" title="Category" />

							<g:sortableColumn property="description" title="Description" />

							<g:sortableColumn property="ratings" title="My Rating" />
						</tr>
					</thead>
					<tbody>
						<g:each in="${activityListInstance.activities}" status="i" var="a">

							<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								<td width="60px">
									${a.category.description}
								</td>
								<td><g:link controller="activity" action="show"
										id="${a.id}">
										${a.description}
									</g:link></td>
								<g:if test="${a?.ratings}">
									<td><g:each in="${a.ratings}" var="r">
											<g:if test="${r.user.id == user.id}">
												<g:link controller="rating" action="show" id="${r.id}">
													${r.user.firstName} - ${r.rating}
												</g:link>
											</g:if>
											<br />
										</g:each></td>
								</g:if>
								<g:else>
									<td><g:link controller="rating" action="create"
											id="${a.id}">Cross it!</g:link></td>
								</g:else>
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