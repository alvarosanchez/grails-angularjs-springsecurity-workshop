package todo

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/todos"(resources:"todo")
        "/pendingTodos"(controller: 'todo', action: 'pending')

        "/"(view: 'index')
        "500"(view: '/error')
        "404"(view: '/notFound')
    }
}
