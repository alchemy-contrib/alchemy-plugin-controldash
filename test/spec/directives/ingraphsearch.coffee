'use strict'

describe 'Directive: inGraphSearch', ->

  # load the directive's module
  beforeEach module 'alchemyPluginControldashApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<in-graph-search></in-graph-search>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the inGraphSearch directive'
