package todo


import grails.rest.*
import grails.converters.*

class TodoController extends RestfulController {

    static responseFormats = ['json', 'xml']

    TodoController() {
        super(Todo)
    }

    def pending() {
        respond Todo.findAllByDone(false), view: 'index'
    }
}
