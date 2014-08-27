_                   = require 'underscore'
Backbone            = require 'backbone'
Backbone.$          = require 'jquery'
Backbone.Marionette = require 'backbone.marionette'
plugin              = require 'plugin'
mime                = require 'mime-types'

class SampleView extends Backbone.Marionette.View

  template: require '../templates/template'

  initialize: ->
    underscoreTest = _.last [0,1,2, 'hi mom!']

  render: ->
    configuration = new Backbone.Model require 'config'
    @$el.html @template
      title: 'Gulp All The Things!'
      description: 'Starter Gulp + Browserify project equipped to handle the following:'
      tools: [
        'Browserify-shim'
        'Browserify / Watchify'
        'CoffeeScript'
        'Compass'
        'SASS'
        'Image optimization'
        'LiveReload'
        'Non common-js jquery plugin'
        'Npm backbone'
        'Npm jquery'
        'Underscore (included with Backbone)'
        'HAML Coffee'
        "Envify: #{configuration.get('environment')}"
        "MimeTypes: #{mime.lookup('google.apk')}!"
      ]

    plugin()

module.exports = SampleView