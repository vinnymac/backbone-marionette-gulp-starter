compass      = require "gulp-compass"
gulp         = require "gulp"
notify       = require "gulp-notify"
minify       = require "gulp-minify-css"
handleErrors = require "../util/handleErrors"
gulpif       = require 'gulp-if'
revall       = require 'gulp-rev-all'
streamify    = require "gulp-streamify"

gulp.task "compass", ->
  compassConfiguration =
      config_file: "compass.rb"
      sass: "app/styles"
      css: "tmp"
  isProduction = global.environment is 'production'
  gulp
    .src("./app/styles/*.sass")
    .pipe(compass(compassConfiguration))
    .on("error", handleErrors)
    .pipe(gulpif(isProduction, minify()))
    .pipe(gulpif(isProduction, streamify(revall())))
    .pipe(gulp.dest('./build'))