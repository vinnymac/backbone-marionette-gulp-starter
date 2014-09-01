# browserify task
#   ---------------
#   Bundle javascripty things with browserify!
#
#   If the watch task is running, this uses watchify instead
#   of browserify for faster bundling using caching.
#

browserify    = require "browserify"
watchify      = require "watchify"
gulp          = require "gulp"
bundleLogger  = require "../util/bundleLogger"
handleErrors  = require "../util/handleErrors"
source        = require "vinyl-source-stream"
transform     = require "vinyl-transform"
streamify     = require "gulp-streamify"
uglify        = require "gulp-uglify"
exorcist      = require "exorcist"
gulpif        = require "gulp-if"
revall        = require 'gulp-rev-all'

gulp.task "browserify", ->
  isProduction = global.environment is "production"

  bundleMethod = if global.isWatching then watchify else browserify
  bundler = bundleMethod
    debug: not isProduction
    # Specify the entry point of your app
    entries: ["./app/scripts/app.coffee"]
    # Add file extentions to make optional in your requires
    extensions: [
      ".coffee"
      ".jst.hamlc"
    ]

  bundle = ->
    isProduction = global.environment is "production"
    dest = "./build/"

    # Log when bundling starts
    bundleLogger.start()
    bundler
      # Enable source maps!
      .bundle()
      # Report compile errors
      .on "error", handleErrors
      # Log when bundling completes!
      .on "end", bundleLogger.end
      # Generate Source map File
      .pipe(gulpif(isProduction, exorcist('./app.map')))
      # Use vinyl-source-stream to make the
      # stream gulp compatible. Specifiy the
      # desired output filename here.
      .pipe(source("app.js"))
      # Uglify the javascript
      .pipe(gulpif(isProduction, streamify(uglify())))
      .pipe(gulpif(isProduction, streamify(revall())))
      # Specify the output destination
      .pipe(gulp.dest(dest))

  # Rebundle with watchify on changes.
  bundler.on "update", bundle  if global.isWatching
  bundle()