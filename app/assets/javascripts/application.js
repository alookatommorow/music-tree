// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require_self
//= require jquery
//= require_tree .
//= require_tree ./angular


(function (){

  var app = angular.module('music', []);

  app.filter('type', function () {
    return function(input) {
      if (input === "master" || input === "release") {
        return "Album";
      } else {
        return input.charAt(0).toUpperCase() + input.slice(1);
      }
    };
  });

  // app.filter('capitalize', function () {
  //   return function(input) {
  //       return input.charAt(0).toUpperCase() + input.slice(1);
  //   };
  // });

  app.controller('MusicController', function() {

    });

  app.controller('SearchController', function($http){
        this.results = [];
        this.query = "";
        var that = this;
        this.submit = function() {
            $http.post('/search', {query: this.query}).success(function(response) {
                that.results = [];
                console.log(response)
                for (var i = 0, x=response.results.length; i < x; i++) {
                    that.results.push(response.results[i]);
                };
            });
            this.query = "";
        };
        this.displayType = function() {
          return "hello";
        };

  });




})();




