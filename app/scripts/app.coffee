module = angular.module 'formbuilderApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute'
]
module.config ($routeProvider) ->
    $routeProvider.when("/",
        templateUrl: "views/main.html"
        controller: "MainCtrl"
    ).otherwise redirectTo: "/"
