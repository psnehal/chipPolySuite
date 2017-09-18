package chippolysuite

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/" {
            controller = "InputParam"
            action = "index"
        }
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
