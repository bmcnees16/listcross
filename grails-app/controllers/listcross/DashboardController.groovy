package listcross

import grails.plugins.springsecurity.Secured
import grails.converters.JSON

class DashboardController {
	def userService
	def springSecurityService
	
	
	@Secured(['ROLE_USER'])
    def index() {
		redirect(action: "dashboard", params: params)
	}
	
	@Secured(['ROLE_USER'])
	def dashboard() {
		def user = userService.currentUser()
		//TODO:  restrict the number of activity lists so it doesn't kill the page design
		def activityLists = user.activityLists
		//TODO:  restrict the users to only the ones I'm doing lists with
		//also return the number of lists you're doing things with them on
		//also need to make this link to ActivityLists/list.  THis won't work currently b/c the user element is hard coded in it
		def userList = User.findAll()
		[user:user, activityLists:activityLists, userList:userList]
	}
	
	def crossIt() {
		def user = userService.currentUser()
		def activityLists = user.activityLists
		[activityLists:activityLists]
	}
	
	def newList() {
		
	}
}
