jasmine = require 'gulp-jasmine'
gulp    = require 'gulp'

gulp.task 'test', ['setTesting'], ->
  process.env.NODE_ENV = 'testing'
  specFiles = './spec/*'

  return gulp.src(specFiles).pipe jasmine()