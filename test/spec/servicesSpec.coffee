describe "Services", ->

    beforeEach module 'formbuilderApp'

    afterEach ->
        @httpBackend.verifyNoOutstandingExpectation()
        @httpBackend.verifyNoOutstandingRequest()


    beforeEach inject((FormBuilderService, $httpBackend) ->
        @httpBackend = $httpBackend
        @service = FormBuilderService
    )

    it "should send request to server for questionsWithAnswers", ->
        @httpBackend.expectGET("/forms/1/users/2").respond 200, {}
        @service.questionsWithAnswers("1", "2")
        @httpBackend.flush()