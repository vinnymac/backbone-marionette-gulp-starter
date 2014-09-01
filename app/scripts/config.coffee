_  = require 'underscore'

configure = (extras = {}) ->
  defaults = {}
  # uglify js should strip out false tests
  configuration = if process.env.NODE_ENV is 'production'
    environment: 'production'
  else if process.env.NODE_ENV is 'development'
    environment: 'development'
  else if process.env.NODE_ENV is 'staging'
    environment: 'staging'
  else # 'testing'
    environment: 'testing'

  _.extend defaults, configuration
  _.extend defaults, extras

module.exports = configure()