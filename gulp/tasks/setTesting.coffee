gulp = require 'gulp'

gulp.task 'setTesting', ->
  global.environment = 'testing'
  process.env.NODE_ENV = global.environment