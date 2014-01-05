describe "Controller: FormEditingController", ->

    @formEditingController = undefined
    @scope = undefined

    beforeEach module 'formbuilderApp'
    beforeEach module 'serviceMocks'

    beforeEach inject(($controller, $rootScope, $routeParams, FormBuilderService) ->
        @controllerFactory = $controller
        @scope = $rootScope.$new()
        @service = FormBuilderService
        @all_questions = [ { "id": 1, "question": "This is a test", "type": "essay"}]
        @formData = {"id" : "1234", "questions" : []}
        $routeParams["formId"] = "1"
        $routeParams["userId"] = "2"
    )

    it "should retrieve questions from service", ->
        spyOn(@service, "questions").andReturn(@all_questions)
        @formEditingController = @controllerFactory("FormEditingCtrl",$scope: @scope)
        expect(@service.questions).toHaveBeenCalled()
        expect(@formEditingController.questions).toEqual(@all_questions)
