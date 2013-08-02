@app = angular.module('TrainingApp', ['ui.bootstrap'])
  .config ($routeProvider) -> 
    $routeProvider
      .when('/', { templateUrl: '/assets/main.html'})
      .when('/basic', { tempalteUrl : '/assets/main.html'})
      .when('/tags', { templateUrl : '/assets/tags.html'})
      .when('/tables', {templateUrl : '/assets/tables.html'})
      .when('/html5', {templateUrl: '/assets/html5.html'})
      .when('/css/basics', {templateUrl : '/assets/css/basics.html'})
      .when('/css/floats', {templateUrl : '/assets/css/floats.html'})
      .when('/css/transitions', {templateUrl : '/assets/css/transitions.html'})
      .when('/css/responsive', {templateUrl : '/assets/css/responsive.html'})
      .otherwise({redirectTo: '/'})