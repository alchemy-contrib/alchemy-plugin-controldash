'use strict'

###*
 # @ngdoc directive
 # @name alchemyPluginControldashApp.directive:controlDash
 # @description
 # # controlDash
###
angular.module('controlDashApp')
  .directive('controlDash', ->
    # template: '<div></div>'
    restrict: 'E'
    controller: 'MainCtrl'
    link: (scope, element, attrs) ->
        # divSelector = a.conf.divSelector
        # add dashboard wrapper
        # dash = d3.select "#{divSelector}"
        a = scope.a

        element.attr "id", "control-dash-wrapper"
                      .attr "class", "col-md-4 initial"

        # add the dash toggle button 
        # dash.append "i"
        dashToggle = element.append('<i>')
                             .attr "id", "dash-toggle"
                             .attr "class", "fa fa-flask col-md-offset-12"

        # dashToggle
               # .on 'click', a.interactions.toggleControlDash


        # add the control dash
        element.append "<div>"
               .attr "id", "control-dash"
               .attr "class", "col-md-12"

        if a.conf.search
            element.append("<inGraphSearch>")
        
        # a.controlDash.zoomCtrl()
        # a.controlDash.filters()
        # a.controlDash.stats()
        # a.controlDash.clustering()
        # a.controlDash.exports()

  )
