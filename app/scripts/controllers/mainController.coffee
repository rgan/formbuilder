class MainCtrl

    @$inject: ['$scope', '$routeParams', 'FormBuilderService']
    constructor: (@scope, $routeParams, @formBuilderService) ->
        @formId = $routeParams["formId"]
        @userId = $routeParams["userId"]
        @scope.questions = @formBuilderService.questionsWithAnswers(@formId,@userId)

angular.module('formbuilderApp').controller 'MainCtrl', MainCtrl