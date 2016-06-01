describe("todo module", function() {
    var scope;

    beforeEach(angular.mock.module("todo", function() {
    }));

    beforeEach(angular.mock.inject(function($rootScope) {
        scope = $rootScope.$new();
    }));

    describe("TodoController", function() {

        var ctrl;

        beforeEach(angular.mock.inject(function($controller) {
            ctrl = $controller("TodoController", {});
        }));

        it("should be tested", function() {
            expect(true).toEqual(false);
        });

    });

});
