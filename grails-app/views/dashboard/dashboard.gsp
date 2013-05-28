<!doctype html>
<html>
<head>
<meta name="layout" content="main" />
<title>Welcome to ListCross</title>
<style type="text/css" media="screen">
#status {
	background-color: #eee;
	border: .2em solid #fff;
	margin: 2em 2em 1em;
	padding: 1em;
	width: 12em;
	float: left;
	-moz-box-shadow: 0px 0px 1.25em #ccc;
	-webkit-box-shadow: 0px 0px 1.25em #ccc;
	box-shadow: 0px 0px 1.25em #ccc;
	-moz-border-radius: 0.6em;
	-webkit-border-radius: 0.6em;
	border-radius: 0.6em;
}

.ie6 #status {
	display: inline;
	/* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
}

#status ul {
	font-size: 0.9em;
	list-style-type: none;
	margin-bottom: 0.6em;
	padding: 0;
}

#status h1 {
	text-transform: uppercase;
	font-size: 1.1em;
	margin: 0 0 0.3em;
}

#page-body {
	margin: 2em 1em 1.25em 18em;
}

h2 {
	margin-top: 1em;
	margin-bottom: 0.3em;
	font-size: 1em;
}

p {
	margin: 0.25em 0;
}

#controller-list ul {
	list-style-position: inside;
}

#controller-list li {
	list-style-position: inside;
	margin: 0.25em 0;
}

@media screen and (max-width: 480px) {
	#status {
		display: none;
	}
	#page-body {
		margin: 0 1em 1em;
	}
	#page-body h1 {
		margin-top: 0;
	}
}
</style>
</head>
<body>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="#"><g:message
						code="default.home.label" /></a></li>
			<li><g:link controller="logout">Sign Out</g:link></li>
		</ul>
	</div>
	<div id="status" role="complementary">
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
	<div id="page-body" role="main">
		<h1>Welcome to ListCross</h1>
		<p>Have you ever found it difficult to answer the question "What do you want to do tonight?"  Or have 
		you ever thought to yourself... I should get out of my comfort zone and try something new.  Maybe go to all 
		50 states.  Maybe try the best Italian restaurants in town.  Maybe read the top 10 best classic novels.  Or
		try all the beer that is brewed in your state.  Whatever hobby you have in mind, you need a place to keep
		you on track.  That's where ListCross comes in.  You can set up Lists that you want to do and then cross them 
		off as you do them.  And best of all, you won't be doing this alone.  ListCross allows you to do Lists with
		people and complete them together.</p>
		<p>
		Get out of your comfort zone.  Try something new.  Cross it.
		</p>

	</div>
</body>
</html>
