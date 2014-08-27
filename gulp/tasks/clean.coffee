clean = require 'gulp-clean'
gulp  = require 'gulp'

gulp.task 'clean', ->
  return gulp.src('build/*', {read: false})
    .pipe(clean())