<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DualControllers.aspx.cs" Inherits="DualControllers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<script type="text/javascript">
    var app1 = angular.module('app1', []);
    app1.controller('Ctrl1', function ($scope) {
        $scope.name = "Jack";
    });

    var app2 = angular.module('app2', []);
    app2.controller('Ctrl2', function ($scope) {
        $scope.name = "Steve";
    });
    angular.element(document).ready(function () {
        angular.bootstrap(document.getElementById('app2'), ['app2']);
    });
    
</script>

<body>
    <form id="form1" runat="server">    
      <div data-ng-app="app1">
        <div data-ng-controller="Ctrl1">
          <span>{{name}}</span>
        </div>
      </div>
      <div id="app2">
        <div data-ng-controller="Ctrl2">
          <span>{{name}}</span>
        </div>
      </div>
    </form>
</body>
</html>
