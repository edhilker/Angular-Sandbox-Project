(function () {
    angular.module('app')
        .directive('superTextbox', function() {
            return{
                restrict: 'E',
                scope:{
                    sayHi: '&enterFunction',
                    placeholder: '@',
                    hero: '='
                },
                templateUrl: 'super-textbox.html',
                controller: function($scope) {
                    $scope.updateName = function() {
                        $scope.hero.name = $scope.name;
                        $scope.sayHi($scope.name);
                    }
                }
            };
        });
})();