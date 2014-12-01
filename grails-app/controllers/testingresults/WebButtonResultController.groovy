package testingresults



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class WebButtonResultController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond WebButtonResult.list(params), model:[webButtonResultInstanceCount: WebButtonResult.count()]
    }

    def show(WebButtonResult webButtonResultInstance) {
        respond webButtonResultInstance
    }

    def create() {
        respond new WebButtonResult(params)
    }

    @Transactional
    def save(WebButtonResult webButtonResultInstance) {
        if (webButtonResultInstance == null) {
            notFound()
            return
        }

        if (webButtonResultInstance.hasErrors()) {
            respond webButtonResultInstance.errors, view:'create'
            return
        }

        webButtonResultInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'webButtonResult.label', default: 'WebButtonResult'), webButtonResultInstance.id])
                redirect webButtonResultInstance
            }
            '*' { respond webButtonResultInstance, [status: CREATED] }
        }
    }

    def edit(WebButtonResult webButtonResultInstance) {
        respond webButtonResultInstance
    }

    @Transactional
    def update(WebButtonResult webButtonResultInstance) {
        if (webButtonResultInstance == null) {
            notFound()
            return
        }

        if (webButtonResultInstance.hasErrors()) {
            respond webButtonResultInstance.errors, view:'edit'
            return
        }

        webButtonResultInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'WebButtonResult.label', default: 'WebButtonResult'), webButtonResultInstance.id])
                redirect webButtonResultInstance
            }
            '*'{ respond webButtonResultInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(WebButtonResult webButtonResultInstance) {

        if (webButtonResultInstance == null) {
            notFound()
            return
        }

        webButtonResultInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'WebButtonResult.label', default: 'WebButtonResult'), webButtonResultInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'webButtonResult.label', default: 'WebButtonResult'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
