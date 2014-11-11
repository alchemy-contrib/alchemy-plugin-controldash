'use strict'

###*
 # @ngdoc directive
 # @name alchemyPluginControldashApp.directive:inGraphSearch
 # @description
 # # inGraphSearch
###
angular.module('controlDashApp')
  .directive('inGraphSearch', ->
    restrict: 'E'
    link: (scope, element, attrs) ->
            element.append "div"
                   .attr "id", "search"
                   .html """
                        <div class='input-group'>
                            <input class='form-control' placeholder='Search'>
                            <i class='input-group-addon search-icon'><span class='fa fa-search fa-1x'></span></i>
                        </div> 
                          """
  )
