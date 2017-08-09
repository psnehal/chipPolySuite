import chippolysuite.InputParam


class BootStrap {

    def springSecurityService

    def init = { servletContext ->
        new InputParam(message: 'Launch day').save()




    }

    def destroy = {
    }
}
