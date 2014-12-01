package testingresults


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BrowsersController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Browsers.list(params), model: [browsersInstanceCount: Browsers.count()]
    }

    def show(Browsers browsersInstance) {
        respond browsersInstance
    }

    def create() {
        respond new Browsers(params)
    }

    @Transactional
    def save(Browsers browsersInstance) {
        if (browsersInstance == null) {
            notFound()
            return
        }

        if (browsersInstance.hasErrors()) {
            respond browsersInstance.errors, view: 'create'
            return
        }

        browsersInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'browsers.label', default: 'Browsers'), browsersInstance.id])
                redirect browsersInstance
            }
            '*' { respond browsersInstance, [status: CREATED] }
        }
    }

    def edit(Browsers browsersInstance) {
        respond browsersInstance
    }

    @Transactional
    def update(Browsers browsersInstance) {
        if (browsersInstance == null) {
            notFound()
            return
        }

        if (browsersInstance.hasErrors()) {
            respond browsersInstance.errors, view: 'edit'
            return
        }

        browsersInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Browsers.label', default: 'Browsers'), browsersInstance.id])
                redirect browsersInstance
            }
            '*' { respond browsersInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Browsers browsersInstance) {

        if (browsersInstance == null) {
            notFound()
            return
        }

        browsersInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Browsers.label', default: 'Browsers'), browsersInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'browsers.label', default: 'Browsers'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
