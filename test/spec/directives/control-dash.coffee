'use strict'

describe 'Directive: controlDash', ->

  # load the directive's module
  beforeEach module 'alchemyPluginControldashApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<control-dash></control-dash>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the controlDash directive'
