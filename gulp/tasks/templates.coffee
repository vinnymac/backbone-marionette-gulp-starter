changed     = require 'gulp-changed'
hamlc       = require 'gulp-haml-coffee' # because gulp-haml is exploding with the string + hashrocket
gulp        = require 'gulp'
gulpif      = require "gulp-if"
revall      = require 'gulp-rev-all'
streamify   = require "gulp-streamify"
config      = require "../../config"

gulp.task 'templates', ->
  dest = './build'
  isProduction = global.environment is 'production'

  return gulp.src('./assets/templates/index.haml')
    .pipe(changed(dest))
    .pipe(hamlc(locals: config))
    .pipe(gulpif(isProduction, streamify(revall())))
    .pipe gulp.dest(dest)