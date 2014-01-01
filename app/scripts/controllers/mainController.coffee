class MainCtrl

    @$inject: ['$scope', '$routeParams', 'FormBuilderService']
    constructor: (@scope, $routeParams, @formBuilderService) ->
        @formId = $routeParams["formId"]
        @userId = $routeParams["userId"]
        @scope.form_data = @formBuilderService.questionsWithAnswers(@formId,@userId)

    save: () ->
        @formBuilderService.save(@formId, @userId, @scope.form_data, (() -> alert("Saved!")), (()->alert("Error saving!")))

angular.module('formbuilderApp').controller 'MainCtrl', MainCtrl