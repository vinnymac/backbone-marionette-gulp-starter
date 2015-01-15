changed    = require 'gulp-changed'
gulp       = require 'gulp'
imagemin   = require 'gulp-imagemin'
gulpif     = require 'gulp-if'
revall     = require 'gulp-rev-all'
streamify  = require "gulp-streamify"

gulp.task 'images', ->
  dest = './build/images/'
  isProduction = global.environment is 'production'

  return gulp.src('assets/images/**/*')
    .pipe(changed(dest)) # Ignore unchanged files
    .pipe(imagemin()) # Optimize
    .pipe(gulpif(isProduction, streamify(revall())))
    .pipe gulp.dest(dest)