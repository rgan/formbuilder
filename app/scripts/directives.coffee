module = angular.module('formbuilderApp')

module.directive 'choiceQuestion', ->
    restrict: 'E',
    require: 'ngModel',
    scope: {
        question: '='
    },
    templateUrl: 'views/choice_question.html'

module.directive 'essayQuestion', ->
    restrict: 'E',
    require: 'ngModel'
    scope: {
        question: '='
    },
    templateUrl: 'views/essay_question.html'