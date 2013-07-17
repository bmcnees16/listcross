package listcross

import org.springframework.dao.DataIntegrityViolationException

class ActivityController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [activityInstanceList: Activity.list(params), activityInstanceTotal: Activity.count()]
    }

    def create() {
        [activityInstance: new Activity(params), activityListId: params.id]
    }

    def save() {
		//TODO:  this app should not deal with the ActivityList controller.  This is tight coupling and bad design.
        def activityInstance = new Activity(params)
        if (!activityInstance.save(flush: true)) {
            render(view: "create", model: [activityInstance: activityInstance])
            return
        }
		
		//if the activityInstance saved, try to save the activityListInstance
		def activityListInstance = ActivityList.get(params.activityListId)
		activityListInstance.addToActivities(activityInstance)
		if (!activityListInstance.save(flush: true)) {
			render(controller: "ActivityList", view: "show", model: [activityListInstance: activityListInstance])
			return
		}
		flash.message = "Activity was created successfully!"
		redirect(controller: "ActivityList", action: "show", id: activityListInstance.id)
//		flash.message = message(code: 'default.created.message', args: [message(code: 'activity.label', default: 'Activity'), activityInstance.id])
//        redirect(action: "show", id: activityInstance.id)

    }

    def show() {
        def activityInstance = Activity.get(params.id)
        if (!activityInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'activity.label', default: 'Activity'), params.id])
            redirect(action: "list")
            return
        }

        [activityInstance: activityInstance]
    }

    def edit() {
        def activityInstance = Activity.get(params.id)
        if (!activityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'activity.label', default: 'Activity'), params.id])
            redirect(action: "list")
            return
        }

        [activityInstance: activityInstance]
    }

    def update() {
        def activityInstance = Activity.get(params.id)
        if (!activityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'activity.label', default: 'Activity'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (activityInstance.version > version) {
                activityInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'activity.label', default: 'Activity')] as Object[],
                          "Another user has updated this Activity while you were editing")
                render(view: "edit", model: [activityInstance: activityInstance])
                return
            }
        }

        activityInstance.properties = params

        if (!activityInstance.save(flush: true)) {
            render(view: "edit", model: [activityInstance: activityInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'activity.label', default: 'Activity'), activityInstance.id])
        redirect(action: "show", id: activityInstance.id)
    }

    def delete() {
        def activityInstance = Activity.get(params.id)
        if (!activityInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'activity.label', default: 'Activity'), params.id])
            redirect(action: "list")
            return
        }

        try {
            activityInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'activity.label', default: 'Activity'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'activity.label', default: 'Activity'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
