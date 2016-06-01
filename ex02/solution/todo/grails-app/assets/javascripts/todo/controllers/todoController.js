//= wrapped

angular
    .module("todo")
    .controller("TodoController", TodoController);

function TodoController(Todo) {
    var vm = this;

    vm.todos = Todo.list();

    vm.newTodo = new Todo();

    vm.save = function() {
        vm.newTodo.$save({}, function() {
            vm.todos.push(angular.copy(vm.newTodo));
            vm.newTodo = new Todo();
        });
    };

    vm.delete = function(todo) {
        todo.$delete({}, function() {
            var idx = vm.todos.indexOf(todo);
            vm.todos.splice(idx, 1);
        });
    };

    vm.update = function(todo) {
        todo.$update();
    };
}
