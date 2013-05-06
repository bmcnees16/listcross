<span style="text-align: center">
	<h1>
		Welcome
		${user.firstName}
		${user.lastName}!
	</h1>
</span>
<div id="userLists">
	<ul>
		<g:each in="${activityLists}" var="activityList">
			<li><g:link controller="activityList" action="show"
					id="${activityList.id}">
					${activityList.title}
				</g:link></li>
		</g:each>
	</ul>
	<div id="showLists">
	<g:link controller="activityList" action="list">Show all my lists</g:link>
	</div>
	<div id="createList">
	<g:link controller="activityList" action="create">Create a new List</g:link>
	</div>
</div>