module = angular.module 'formbuilderApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute'
]
module.config ($routeProvider) ->
    $routeProvider.when('/form/:formId/user/:userId',
        templateUrl: "views/main.html"
        controller: "MainCtrl"
    ).otherwise redirectTo: "/"
