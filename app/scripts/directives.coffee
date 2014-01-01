angular.module('formbuilderApp').directive 'choiceQuestion', ->
    restrict: 'E',
    require: 'ngModel',
    scope: {
        question: '='
    },
    templateUrl: 'views/choice_question.html'

angular.module('formbuilderApp').directive 'essayQuestion', ->
    restrict: 'E',
    require: 'ngModel'
    scope: {
        question: '='
    },
    templateUrl: 'views/essay_question.html'