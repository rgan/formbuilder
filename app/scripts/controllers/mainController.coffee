class MainCtrl

    @$inject: ['$scope', '$window']
    constructor: (@scope, $window) ->
        @scope.questions = [
            { id: "1", type: "choice", question: "Is Python a dynamically typed language?",choices: [ { id: 0, value: "No", label: "No"}, { id: 1, value: "Yes", label: "Yes"}], answer: "Yes"}
            { id: "2", type: "essay", question: "What is the difference between statically and dynamically typed languages?", answer: "Blah,..Blah"}
        ]


angular.module('formbuilderApp').controller 'MainCtrl', MainCtrl