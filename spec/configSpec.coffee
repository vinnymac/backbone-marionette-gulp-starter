Backbone = require 'backbone'
config   = require '../app/scripts/config'

describe "Configuration", ->
  it "should be a testing environment", ->
    configuration = new Backbone.Model config
    expect(configuration.get('environment')).toBe("testing")