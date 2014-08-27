gulp = require 'gulp'

gulp.task 'watch', ['setWatch', 'browserSync'], ->
  gulp.watch('app/styles/**',       ['compass'])
  gulp.watch('assets/images/**',    ['images'])
  gulp.watch('assets/templates/**', ['templates'])
  # Note: The browserify task handles js recompiling with watchify