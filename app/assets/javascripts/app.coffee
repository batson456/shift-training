@app = angular.module('TrainingApp', ['ui.bootstrap'])
  .config ($routeProvider) -> 
    $routeProvider
      .when('/', { templateUrl: '/assets/main.html'})
      .when('/basic', { tempalteUrl : '/assets/main.html'})
      .when('/layout', { templateUrl : '/assets/layout.html'})
      .otherwise({redirectTo: '/'})