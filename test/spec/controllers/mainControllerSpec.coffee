describe "Controller: MainCtrl", ->

    @MainCtrl = undefined
    @scope = undefined

    beforeEach module 'formbuilderApp'
    beforeEach module 'serviceMocks'

    beforeEach inject(($controller, $rootScope, $routeParams, FormBuilderService) ->
        @controllerFactory = $controller
        @scope = $rootScope.$new()
        @service = FormBuilderService
        @formData = {"id" : "1234", "questions" : []}
        $routeParams["formId"] = "1"
        $routeParams["userId"] = "2"
    )

    it "should attach a list of questions returned by service to the scope", ->
        spyOn(@service, "questionsWithAnswers").andReturn(@formData)
        @MainCtrl = @controllerFactory("MainCtrl",$scope: @scope)
        expect(@service.questionsWithAnswers).toHaveBeenCalledWith("1", "2")
        expect(@scope.form_data).toEqual(@formData)

    it "should invoke service method to save form data on save", ->
        spyOn(@service, "questionsWithAnswers").andReturn(@formData)
        spyOn(@service, "save")
        @MainCtrl = @controllerFactory("MainCtrl",$scope: @scope)
        @MainCtrl.save()
        expect(@service.save).toHaveBeenCalledWith("1", "2", @formData, jasmine.any(Function), jasmine.any(Function))
