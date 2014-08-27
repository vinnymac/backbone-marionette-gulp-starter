gulp = require 'gulp'

gulp.task 'setDevelopment', ->
  global.environment = 'development'
  process.env.NODE_ENV = global.environment