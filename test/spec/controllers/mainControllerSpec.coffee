describe "Controller: MainCtrl", ->

    @MainCtrl = undefined
    @scope = undefined

    beforeEach inject(($controller, $rootScope) ->
        @scope = $rootScope.$new()
        @MainCtrl = $controller("MainCtrl",
        $scope: @scope
        )
    )
    it "should attach a list of quetions to the scope", ->
        expect(@scope.questions.length).toBe 2
