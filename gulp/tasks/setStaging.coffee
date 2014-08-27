gulp = require 'gulp'

gulp.task 'setStaging', ->
  global.environment = 'staging'
  process.env.NODE_ENV = global.environment