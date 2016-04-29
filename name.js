
var app1 = angular.module('app1', []);

//angular.module('myApp1', []).controller('namesCtrl', function ($scope) {
//app1.controller('namesCtrl', function ($scope) {
//    $scope.names = [
//         { name: 'Jani', country: 'Norway' },
//         { name: 'Hege', country: 'Sweden' },
//         { name: 'Kai', country: 'Denmark' }
//     ];
//});


app1.controller('Ctrl1', function ($scope) {
    $scope.firstname = "Jack";
    $scope.lastname = "We";
});