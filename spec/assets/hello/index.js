// define('hello-angular', ['angular'], function(angular) {
  'use strict';

  var app = angular.module('helloAngular', ['ngRoute'])
    .config(['$routeProvider', function($routeProvider) {
      $routeProvider.when('/', {
        templateUrl: 'partials/home.html'
      })
      .otherwise({
        redirect_to: '/'
      })
    }])
    .directive('hello', [function() {
      return {
        templateUrl: 'partials/hello.html',
        scope: {
          name: '@'
        },
        restrict: 'AE',
        link: function(scope, element) {
          var greetings = ['Hello', 'Bonjour', 'שלום', 'السلام عليكم', 'Hola', '你好', 'Howdy', 'Guten Tag', 'Γειά σου', 'Salut', 'Ciao', 'Aloha'],
              curGreeting = 0,
              nextGreeting = function() {
                if (curGreeting == greetings.length) {
                  curGreeting = 0;
                }

                return greetings[curGreeting++];
              }

          scope.changeGreeting = function() {
            scope.greeting = nextGreeting();
          }

          scope.changeGreeting();
        }
      }
    }]);

//   return app;
// });
