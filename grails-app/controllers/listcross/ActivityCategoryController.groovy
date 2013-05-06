package listcross

import org.springframework.dao.DataIntegrityViolationException

class ActivityCategoryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [activityCategoryInstanceList: ActivityCategory.list(params), activityCategoryInstanceTotal: ActivityCategory.count()]
    }

    def create() {
        [activityCategoryInstance: new ActivityCategory(params)]
    }

    def save() {
        def activityCategoryInstance = new ActivityCategory(params)
        if (!activityCategoryInstance.save(flush: true)) {
            render(view: "create", model: [activityCategoryInstance: activityCategoryInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'activityCategory.label', default: 'ActivityCategory'), activityCategoryInstance.id])
        redirect(action: "show", id: activityCategoryInstance.id)
    }

    def show() {
        def activityCategoryInstance = ActivityCategory.get(params.id)
        if (!activityCategoryInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'activityCategory.label', default: 'ActivityCategory'), params.id])
            redirect(action: "list")
            return
        }

        [activityCategoryInstance: activityCategoryInstance]
    }

    def edit() {
        def activityCategoryInstance = ActivityCategory.get(params.id)
        if (!activityCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'activityCategory.label', default: 'ActivityCategory'), params.id])
            redirect(action: "list")
            return
        }

        [activityCategoryInstance: activityCategoryInstance]
    }

    def update() {
        def activityCategoryInstance = ActivityCategory.get(params.id)
        if (!activityCategoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'activityCategory.label', default: 'ActivityCategory'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (activityCategoryInstance.version > version) {
                activityCategoryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'activityCategory.label', default: 'ActivityCategory')] as Object[],
                          "Another user has updated this ActivityCategory while you were editing")
                render(view: "edit", model: [activityCategoryInstance: activityCategoryInstance])
                return
            }
        }

        activityCategoryInstance.properties = params

        if (!activityCategoryInstance.save(flush: true)) {
            render(view: "edit", model: [activityCategoryInstance: activityCategoryInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'activityCategory.label', default: 'ActivityCategory'), activityCategoryInstance.id])
        redirect(action: "show", id: activityCategoryInstance.id)
    }

    def delete() {
        def activityCategoryInstance = ActivityCategory.get(params.id)
        if (!activityCategoryInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'activityCategory.label', default: 'ActivityCategory'), params.id])
            redirect(action: "list")
            return
        }

        try {
            activityCategoryInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'activityCategory.label', default: 'ActivityCategory'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'activityCategory.label', default: 'ActivityCategory'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
