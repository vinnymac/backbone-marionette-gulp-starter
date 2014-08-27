gulp = require 'gulp'

gulp.task 'build', ['clean', 'browserify', 'compass', 'images', 'templates']