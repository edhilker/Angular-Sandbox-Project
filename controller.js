(function () {
    angular.module('app', [])
        .controller('ctrl', function(){
            var vm = this;
            vm.hero = {};
            vm.nameEntered = function(){
                alert('Welcome, ' + vm.hero.name + '!');
            };
        });
})();