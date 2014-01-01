class FormbuilderServiceMock
    questionsWithAnswers: (formId, userId) ->
        console.log "Using service mock"

    save: (formId, userId, form, successCallback, failureCallback) ->

angular.module('serviceMocks', []).service 'FormBuilderService', FormbuilderServiceMock