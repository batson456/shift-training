@app = angular.module('TrainingApp', ['ui.bootstrap'])
  .config ($routeProvider) -> 
    $routeProvider
      .when('/', { templateUrl: '/assets/main.html'})
      .when('/basic', { tempalteUrl : '/assets/main.html'})
      .when('/tags', { templateUrl : '/assets/tags.html'})
      .when('/tables', {templateUrl : '/assets/tables.html'})
      .otherwise({redirectTo: '/'})