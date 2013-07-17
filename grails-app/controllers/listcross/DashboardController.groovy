package listcross

import grails.plugins.springsecurity.Secured
import grails.converters.JSON

class DashboardController {
	def userService
	def springSecurityService
	
	def ajaxGetActivities = {
		def activityList = ActivityList.get(params.id)
		render activityList?.activities as JSON 	
	}
	
	@Secured(['ROLE_USER'])
    def index() {
		redirect(action: "dashboard", params: params)
	}
	
	@Secured(['ROLE_USER'])
	def dashboard() {
		//def user = User.findByFirstName('Bob')
		def user = userService.currentUser()
		def activityLists = user.activityLists
		[user:user, activityLists:activityLists]
	}
	
	def crossIt() {
		def user = userService.currentUser()
		def activityLists = user.activityLists
		[activityLists:activityLists]
	}
	
	def newList() {
		
	}
}
