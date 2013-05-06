package listcross

import grails.plugins.springsecurity.Secured

class DashboardController {
	def userService
	def springSecurityService
	
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
}
