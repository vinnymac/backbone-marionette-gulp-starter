production  = require './production'
development = require './development'
staging     = require './staging'
testing     = require './testing'
_           = require 'underscore'

configure = (extras = {}) ->
  environment = switch process.env.NODE_ENV
    when "production"  then production
    when "development" then development
    when "staging"     then staging
    else                    testing
  defaults =
    environment: 'default'

  _.extend defaults, environment
  _.extend defaults, extras

module.exports = configure()