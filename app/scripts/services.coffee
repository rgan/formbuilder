class FormbuilderService

    @$inject: ['$resource', '$log']
    constructor: (@resource, @log) ->
        @formResource = @resource 'api/forms/:id'
        @formAnswerResource = @resource 'api/forms/:id/user/:id'

    questionsWithAnswers: (formId, userId) ->
        #@formAnswerResource(formId, userId)
        [
            { id: "1", type: "choice", question: "Is Python a dynamically typed language?",choices: [ { value: "No", label: "No"}, { value: "Yes", label: "Yes"}], answer: "Yes"}
            { id: "2", type: "essay", question: "What is the difference between statically and dynamically typed languages?", answer: "Blah,..Blah aha"}
        ]

angular.module('formbuilderApp').service 'FormBuilderService', FormbuilderService

