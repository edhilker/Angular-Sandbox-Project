(function () {
    angular.module('app')
        .directive('onEnter', function(){
            return{
                link: function(scope, element, attrs){
                    element.bind('keypress', function(e){
                        if(e.which === 13){
                            scope.$apply(function(){
                                scope.$eval(attrs.onEnter);
                            });
                            e.preventDefault();
                        }
                    });
                }
            };
        });
})();