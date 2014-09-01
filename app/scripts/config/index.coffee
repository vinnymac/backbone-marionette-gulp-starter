_  = require 'underscore'

configure = (extras = {}) ->
  defaults = {}
  # uglify strips out useless tests and requires
  configuration = if process.env.NODE_ENV is 'production'
    require 'production'
  else if process.env.NODE_ENV is 'development'
    require 'development'
    # environment: 'development'
  else if process.env.NODE_ENV is 'staging'
    require 'staging'
  else # 'testing'
    require 'testing'

  _.extend defaults, configuration
  _.extend defaults, extras

module.exports = configure()