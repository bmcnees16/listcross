<div id="list-activityList" class="content scaffold-list" role="main">
			<h1>All of the lists for: ${user.firstName} ${user.lastName}</h1>
			<br />
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'activityList.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="title" title="${message(code: 'activityList.title.label', default: 'Title')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${activityListInstanceList}" status="i" var="activityListInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${activityListInstance.id}">${fieldValue(bean: activityListInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: activityListInstance, field: "title")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${activityListInstanceTotal}" />
			</div>
		</div>