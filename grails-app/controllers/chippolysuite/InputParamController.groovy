package chippolysuite

//import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
class InputParamController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]


    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond InputParam.list(params), model:[inputParamCount: InputParam.count()]
    }

    def show(InputParam inputParam) {
        respond inputParam
    }

    def create() {
        respond new InputParam(params)
    }

    def tutorials() {

    }

    def datasets() {

    }

    def news() {

    }

    def contact() {

    }

    def chipInput(){


    }



    @Transactional
    def save(InputParam inputParam) {
        if (inputParam == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (inputParam.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond inputParam.errors, view:'create'
            return
        }

        inputParam.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'inputParam.label', default: 'InputParam'), inputParam.id])
                redirect inputParam
            }
            '*' { respond inputParam, [status: CREATED] }
        }
    }

    def edit(InputParam inputParam) {
        respond inputParam
    }

    @Transactional
    def update(InputParam inputParam) {
        if (inputParam == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (inputParam.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond inputParam.errors, view:'edit'
            return
        }

        inputParam.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'inputParam.label', default: 'InputParam'), inputParam.id])
                redirect inputParam
            }
            '*'{ respond inputParam, [status: OK] }
        }
    }

    @Transactional
    def delete(InputParam inputParam) {

        if (inputParam == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        inputParam.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'inputParam.label', default: 'InputParam'), inputParam.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'inputParam.label', default: 'InputParam'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
