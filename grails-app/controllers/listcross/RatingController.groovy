package listcross

import grails.plugins.springsecurity.Secured

import org.springframework.dao.DataIntegrityViolationException

class RatingController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	def userService
	def springSecurityService
	
    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [ratingInstanceList: Rating.list(params), ratingInstanceTotal: Rating.count()]
    }

	@Secured(["ROLE_USER"])
    def create() {
		def user = userService.currentUser()
		Rating rating = new Rating(params)
		rating.user = user
		
        [ratingInstance: rating]
    }

    def save() {
        def ratingInstance = new Rating(params)
        if (!ratingInstance.save(flush: true)) {
			
            render(view: "create", model: [ratingInstance: ratingInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'rating.label', default: 'Rating'), ratingInstance.id])
        redirect(action: "show", id: ratingInstance.id)
    }

    def show() {
        def ratingInstance = Rating.get(params.id)
        if (!ratingInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'rating.label', default: 'Rating'), params.id])
            redirect(action: "list")
            return
        }

        [ratingInstance: ratingInstance]
    }

    def edit() {
        def ratingInstance = Rating.get(params.id)
        if (!ratingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rating.label', default: 'Rating'), params.id])
            redirect(action: "list")
            return
        }

        [ratingInstance: ratingInstance]
    }

    def update() {
        def ratingInstance = Rating.get(params.id)
        if (!ratingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rating.label', default: 'Rating'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (ratingInstance.version > version) {
                ratingInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'rating.label', default: 'Rating')] as Object[],
                          "Another user has updated this Rating while you were editing")
                render(view: "edit", model: [ratingInstance: ratingInstance])
                return
            }
        }

        ratingInstance.properties = params

        if (!ratingInstance.save(flush: true)) {
            render(view: "edit", model: [ratingInstance: ratingInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'rating.label', default: 'Rating'), ratingInstance.id])
        redirect(action: "show", id: ratingInstance.id)
    }

    def delete() {
        def ratingInstance = Rating.get(params.id)
        if (!ratingInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'rating.label', default: 'Rating'), params.id])
            redirect(action: "list")
            return
        }

        try {
            ratingInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'rating.label', default: 'Rating'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'rating.label', default: 'Rating'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
