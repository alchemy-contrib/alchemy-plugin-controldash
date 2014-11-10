# Bootstraps the angular app - "loads it into the alchemy context"
# make sure that it can take alchemy.conf.divSelector as the element
if not Alchemy?
    console.warn("Make sure you include Alchemy.js 0.4.1 or higher!")
else
    # move this to Alchemy
    plugins = Alchemy::plugins = {}
    # also create a "conf" parameter that generates named plugins
    # and then instantiates them
    Alchemy::plugins.controlDash = (instance) =>        
        # loads control dash app ONLY within context of the
        # div provided by the Alchemy instance in order
        a = instance.a
        angular.module('controlDashApp')
               .controller 'MainCtrl', ($scope) ->
                    $scope.a = a
        angular.bootstrap(a.conf.divSelector, ['controlDashApp'])
     
