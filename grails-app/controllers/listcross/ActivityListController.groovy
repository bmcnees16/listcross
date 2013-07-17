package listcross

import grails.plugins.springsecurity.Secured

import org.springframework.dao.DataIntegrityViolationException

class ActivityListController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	def userService
	def springSecurityService
	
    def index() {
        redirect(action: "list", params: params)
    }

	@Secured(["ROLE_USER"])
    def list() {
		def user = userService.currentUser()
		def activityLists = user.activityLists
		
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        //[activityListInstanceList: ActivityList.list(params), activityListInstanceTotal: ActivityList.count()]
		[user:user, activityListInstanceList:activityLists, activityListInstanceTotal: ActivityList.count()]
    }

    def create() {
        [activityListInstance: new ActivityList(params)]
    }
	
	def addition() {
		[activityListInstance: ActivityList.get(params.id)]
	}

    def save() {
        def activityListInstance = new ActivityList(params)
		
        if (!activityListInstance.save(flush: true)) {
            render(view: "create", model: [activityListInstance: activityListInstance])
            return
        }
		
		def user = userService.currentUser()
		user.addToActivityLists(activityListInstance)
		user.save()
		flash.message = 'Activity List Created Successfully!'
        redirect(action: "show", id: activityListInstance.id)
    }
	
	def remove() {
		def activityListInstance = ActivityList.get(params.id)
		def userInstance = User.get(params.userid)
		activityListInstance.removeFromUsers(userInstance)
		if (!activityListInstance.save(flush: true)) {
			render(view: "create", model: [activityListInstance: activityListInstance])
			return
		}

		flash.message = "Successfully removed ${userInstance.firstName}"
		redirect(action: "show", id: activityListInstance.id)
	}
	
	@Secured(["ROLE_USER"])
    def show() {
		
		def user = userService.currentUser()		
		def pId = params.id
		pId = pId.toLong()
        //def activityListInstance = ActivityList.get(params.id)
		def activityListInstance = ActivityList.findWhere(id: pId)
		//def activityInstance = Activity.findAllWhere(activityList: activityListInstance)
        if (!activityListInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'activityList.label', default: 'ActivityList'), params.id])
            redirect(action: "list")
            return
        }

        [user: user, activityListInstance: activityListInstance]
    }

    def edit() {
        def activityListInstance = ActivityList.get(params.id)
        if (!activityListInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'activityList.label', default: 'ActivityList'), params.id])
            redirect(action: "list")
            return
        }

        [activityListInstance: activityListInstance]
    }

    def update() {
        def activityListInstance = ActivityList.get(params.id)
        if (!activityListInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'activityList.label', default: 'ActivityList'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (activityListInstance.version > version) {
                activityListInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'activityList.label', default: 'ActivityList')] as Object[],
                          "Another user has updated this ActivityList while you were editing")
                render(view: "edit", model: [activityListInstance: activityListInstance])
                return
            }
        }

        activityListInstance.properties = params

        if (!activityListInstance.save(flush: true)) {
            render(view: "edit", model: [activityListInstance: activityListInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'activityList.label', default: 'ActivityList'), activityListInstance.id])
        redirect(action: "show", id: activityListInstance.id)
    }

    def delete() {
        def activityListInstance = ActivityList.get(params.id)
        if (!activityListInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'activityList.label', default: 'ActivityList'), params.id])
            redirect(action: "list")
            return
        }

        try {
            activityListInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'activityList.label', default: 'ActivityList'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'activityList.label', default: 'ActivityList'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
