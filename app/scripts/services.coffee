class FormbuilderService

    @$inject: ['$resource', '$log']
    constructor: (@resource, @log) ->
        @formAnswerResource = @resource '/forms/:formId/users/:userId'
        @formResource = @resource '/forms/:formId'
        @questionsResource = @resource '/questions'

    questionsWithAnswers: (formId, userId) ->
        @formAnswerResource.get({formId: formId, userId: userId})

    save: (formId, userId, form, successCallback, failureCallback) ->
        form.$save({formId: formId, userId: userId}, successCallback, failureCallback)

    formById: (formId) ->
        @formResource.get({formId: formId})

    questions: () ->
        @questionResource.get()

angular.module('formbuilderApp').service 'FormBuilderService', FormbuilderService

