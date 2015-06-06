package com.iniesta.answer.core



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CertificationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Certification.list(params), model:[certificationInstanceCount: Certification.count()]
    }

    def show(Certification certificationInstance) {
        respond certificationInstance
    }

    def create() {
        respond new Certification(params)
    }

    @Transactional
    def save(Certification certificationInstance) {
        if (certificationInstance == null) {
            notFound()
            return
        }

        if (certificationInstance.hasErrors()) {
            respond certificationInstance.errors, view:'create'
            return
        }

        certificationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'certification.label', default: 'Certification'), certificationInstance.id])
                redirect certificationInstance
            }
            '*' { respond certificationInstance, [status: CREATED] }
        }
    }

    def edit(Certification certificationInstance) {
        respond certificationInstance
    }

    @Transactional
    def update(Certification certificationInstance) {
        if (certificationInstance == null) {
            notFound()
            return
        }

        if (certificationInstance.hasErrors()) {
            respond certificationInstance.errors, view:'edit'
            return
        }

        certificationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Certification.label', default: 'Certification'), certificationInstance.id])
                redirect certificationInstance
            }
            '*'{ respond certificationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Certification certificationInstance) {

        if (certificationInstance == null) {
            notFound()
            return
        }

        certificationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Certification.label', default: 'Certification'), certificationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'certification.label', default: 'Certification'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
