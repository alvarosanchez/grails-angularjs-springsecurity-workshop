//= wrapped

angular
    .module("todo")
    .factory("Todo", Todo);

function Todo($resource) {
    var Todo = $resource(
        "todos/:id",
        {"id": "@id"},
        {"update": {method: "PUT"}, "list": {method: "GET", isArray: true}}
    );
    return Todo;
}
