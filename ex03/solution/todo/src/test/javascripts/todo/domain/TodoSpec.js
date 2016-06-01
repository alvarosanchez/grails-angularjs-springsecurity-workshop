describe("todo module", function() {
    var $httpBackend;

    beforeEach(angular.mock.module("todo", function() {
    }));

    beforeEach(angular.mock.inject(function(_$httpBackend_) {
        $httpBackend = _$httpBackend_;
    }));

    afterEach(function() {
        $httpBackend.verifyNoOutstandingExpectation();
        $httpBackend.verifyNoOutstandingRequest();
    });

    describe("Todo domain", function() {

        var Todo;

        beforeEach(angular.mock.inject(function(_Todo_) {
            Todo = _Todo_;
        }));

        it("should be tested", function() {
            expect(true).toEqual(false);
        });

    });

});
