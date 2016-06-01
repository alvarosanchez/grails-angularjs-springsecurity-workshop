package todo


import grails.rest.*

//@Resource(uri = '/todos', readOnly = false, formats = ['json', 'xml'])
class Todo {
    String description
    boolean done
}
