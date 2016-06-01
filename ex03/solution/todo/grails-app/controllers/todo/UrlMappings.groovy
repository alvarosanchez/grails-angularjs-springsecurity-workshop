package todo

class UrlMappings {

    static mappings = {

        "/api/todos"(resources:"todo")

        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view: 'index')
        "500"(view: '/error')
        "404"(view: '/notFound')
    }
}
