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


  // var nuts = [
  //           {description: "shittards",},
  //           {description: "bag", }
  //           ];

  app.controller('MusicController', function() {
        this.garbage = "Hello";
    });

  app.controller('SearchController', function($http){

        this.results = [];
        this.query = "";
        var stuff = this.results;
        this.submit = function() {
            console.log(this.query + "hella");
            $http.post('/search', {query: this.query});
            this.query = "";
        };


        // .success(function(response) {
        //     search.results = response;
        //     console.log(response)
        // });



  } );






  })();
