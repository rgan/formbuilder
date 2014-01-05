class FormEditingController

    @$inject: ['$scope', '$routeParams', 'FormBuilderService']
    constructor: (@scope, $routeParams, @formBuilderService) ->
        @formId = $routeParams["formId"]
        @questions = @formBuilderService.questions()
        if @formId is not 'new'
            @form = @formBuilderService.formById(@formId)
        else
            @form = { "name": "", "questions": []}

    addToForm: (questionToAdd) ->
        @form.questions.push questionToAdd

    removeFromForm: (questionToRemove) ->
        @form.questions.splice(@form.questions.indexOf(questionToRemove), 1)

    save: () ->
        @formBuilderService.saveForm(@formId, @scope.form, (() -> alert("Saved!")), (()->alert("Error saving!")))

angular.module('formbuilderApp').controller 'FormEditingCtrl', FormEditingController