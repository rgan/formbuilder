app_module = angular.module 'formbuilderApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute'
]
app_module.config ($routeProvider) ->
    $routeProvider.when('/forms/:formId/users/:userId',
        templateUrl: "views/main.html"
        controller: "MainCtrl as mainCtrl"
    ).otherwise redirectTo: "/"
