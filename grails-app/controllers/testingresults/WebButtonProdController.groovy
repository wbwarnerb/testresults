package testingresults


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class WebButtonProdController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 100, 100)
        respond WebButtonProd.list(params), model: [webButtonProdInstanceCount: WebButtonProd.count()]
    }

    def show(WebButtonProd webButtonProdInstance) {
        respond webButtonProdInstance
    }

    def create() {
        respond new WebButtonProd(params)
    }

    @Transactional
    def save(WebButtonProd webButtonProdInstance) {
        if (webButtonProdInstance == null) {
            notFound()
            return
        }

        if (webButtonProdInstance.hasErrors()) {
            respond webButtonProdInstance.errors, view: 'create'
            return
        }

        webButtonProdInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'webButtonProd.label', default: 'WebButtonProd'), webButtonProdInstance.id])
                redirect webButtonProdInstance
            }
            '*' { respond webButtonProdInstance, [status: CREATED] }
        }
    }

    def edit(WebButtonProd webButtonProdInstance) {
        respond webButtonProdInstance
    }

    @Transactional
    def update(WebButtonProd webButtonProdInstance) {
        if (webButtonProdInstance == null) {
            notFound()
            return
        }

        if (webButtonProdInstance.hasErrors()) {
            respond webButtonProdInstance.errors, view: 'edit'
            return
        }

        webButtonProdInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'WebButtonProd.label', default: 'WebButtonProd'), webButtonProdInstance.id])
                redirect webButtonProdInstance
            }
            '*' { respond webButtonProdInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(WebButtonProd webButtonProdInstance) {

        if (webButtonProdInstance == null) {
            notFound()
            return
        }

        webButtonProdInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'WebButtonProd.label', default: 'WebButtonProd'), webButtonProdInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'webButtonProd.label', default: 'WebButtonProd'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
