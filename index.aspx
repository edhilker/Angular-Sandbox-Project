﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="ui_router_test_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AngularJS: UI-Router Quick Start</title>
    <!-- Bootstrap CSS -->
    <link href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.1/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="container">
  <p><i>Best viewed in pop-out mode to see location changes. Click blue button on the right.</i></p>

  <div class="navbar">
    <div class="navbar-inner">
      <a class="brand" href="#">Quick Start</a>
      <ul class="nav">
        <li><a data-ui-sref="route1">Route 1</a></li>
        <li><a data-ui-sref="route2">Route 2</a></li>
      </ul>
    </div>
  </div>

  <div class="row">
    <div class="span12">
      <div class="well" data-ui-view></div>        
    </div>
  </div>         
  
  <!-- Angular -->
  <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.4/angular.js"></script>
  <!-- UI-Router -->
  <script src="//angular-ui.github.io/ui-router/release/angular-ui-router.js"></script>
  
  <!-- App Script -->
  <script>
      var myapp = angular.module('myapp', ["ui.router"])
      myapp.config(function ($stateProvider, $urlRouterProvider) {

          // For any unmatched url, send to /route1
          $urlRouterProvider.otherwise("/route1")

          $stateProvider
        .state('route1', {
            url: "/route1",
            templateUrl: "route1.html"
        })
          .state('route1.list', {
              url: "/list",
              templateUrl: "route1.list.html",
              controller: function ($scope) {
                  $scope.items = ["A", "List", "Of", "Items"];
              }
          })

        .state('route2', {
            url: "/route2",
            templateUrl: "route2.html"
        })
          .state('route2.list', {
              url: "/list",
              templateUrl: "route2.list.html",
              controller: function ($scope) {
                  $scope.things = ["A", "Set", "Of", "Things"];
              }
          })
      })
  </script>

</body>

</html>
