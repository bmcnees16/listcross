package listcross

class UserService {
	
	def springSecurityService
	
    def currentUser() {
		return User.get(springSecurityService.principal.id)
	}
}
