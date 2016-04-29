<%@ Page Language="C#" AutoEventWireup="true" CodeFile="twoContrls.aspx.cs" Inherits="twoContrls" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script type="text/javascript">
    app = angular.module('myApp', []);                                                                             

    app.config(function($routeProvider, $locationProvider) {                        
      $routeProvider                                                                
           .when('/student', {                                            
             templateUrl: "/student/index.html",                                               
             controller:'homeController',                                
            })                                                                      
            .when('/', {                                       
                templateUrl: "index.html",     
                controller: 'aboutController',  
            }) 
            .otherwise({                      
                template: 'does not exists'   
            });      
    });

    app.controller('homeController', [              
        '$scope',                              
        function homeController($scope) {        
            $scope.message = 'HOME PAGE';                  
        }                                                
    ]);                                                  

    app.controller('aboutController', [                  
        '$scope',                               
        function aboutController($scope) {        
            $scope.about = 'WE LOVE CODE';                       
        }                                                
    ]); 
</script>

<body>
    <form id="form1" runat="server">
    <div>

        <div id="sideMenu">
             MENU CONTENT 
        </div>

        <div id="content" data-ng-view="">
             Angular view would show here 
        </div>

    </div>
    </form>
</body>
</html>
