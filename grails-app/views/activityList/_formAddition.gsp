<%@ page import="listcross.ActivityList" %>


<div class="fieldcontain ${hasErrors(bean: activityListInstance, field: 'users', 'error')} ">
	<label for="users">
		User		
	</label>
	<g:select name="users" from="${listcross.User.list()}" multiple="multiple" optionKey="id" size="5" value="${activityListInstance?.users*.id}" class="many-to-many"/>
</div>
