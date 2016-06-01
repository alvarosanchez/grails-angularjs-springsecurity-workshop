//= wrapped

angular
    .module("todo")
    .factory('authInterceptor', function ($rootScope, $window) {
        return {
            request: function (config) {
                config.headers = config.headers || {};
                if ($window.sessionStorage.token) {
                    config.headers.Authorization = 'Bearer ' + $window.sessionStorage.token;
                }
                return config;
            }
        };
    })
    .config(function ($httpProvider) {
        $httpProvider.interceptors.push('authInterceptor');
    })
    .controller("TodoController", TodoController);

function TodoController(Todo, $http, $window) {
    var vm = this;

    vm.authenticated = false;
    vm.user = {};

    vm.todos = [];

    vm.newTodo = new Todo();

    vm.login = function () {
        $http.post('/api/login', {
            username: vm.user.username,
            password: vm.user.password
        }).then(function (response) {
            vm.authenticated = true;
            $window.sessionStorage.token = response.data.access_token;
            vm.todos = Todo.list();
        });
    };

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
