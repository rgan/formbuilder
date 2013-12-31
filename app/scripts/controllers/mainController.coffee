class MainCtrl

    @$inject: ['$scope', 'FormBuilderService']
    constructor: (@scope, @formBuilderService) ->
        @scope.questions = @formBuilderService.questionsWithAnswers(1,1)


angular.module('formbuilderApp').controller 'MainCtrl', MainCtrl