gulp = require 'gulp'

gulp.task 'setProduction', ->
  global.environment = 'production'
  process.env.NODE_ENV = global.environment