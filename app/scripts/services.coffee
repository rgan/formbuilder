class FormbuilderService

    @$inject: ['$resource', '$log']
    constructor: (@resource, @log) ->
        @formAnswerResource = @resource '/forms/:formId/users/:userId'

    questionsWithAnswers: (formId, userId) ->
        @formAnswerResource.get({formId: formId, userId: userId})

    save: (formId, userId, form, successCallback, failureCallback) ->
        form.$save({formId: formId, userId: userId}, successCallback, failureCallback)

angular.module('formbuilderApp').service 'FormBuilderService', FormbuilderService

