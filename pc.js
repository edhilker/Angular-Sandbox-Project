
var app2 = angular.module('app2', []);

//    app2.controller('personCtrl', function($scope) {
//     $scope.firstName = "John";
//    $scope.lastName = "Doe";
//    $scope.fullName = function() {
//        return $scope.firstName + " " + $scope.lastName;
//    };
//});

app2.controller('Ctrl2', function ($scope) {
    $scope.firstName = "Steve";
    $scope.lastName = "D";
});

angular.element(document).ready(function () {
    angular.bootstrap(document.getElementById('app2'), ['app2']);
});