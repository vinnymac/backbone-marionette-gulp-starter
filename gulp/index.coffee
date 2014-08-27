fs = require 'fs'
onlyScripts = require './util/scriptFilter'
tasks = fs.readdirSync('./gulp/tasks/').filter onlyScripts

global.environment = 'development'

# This loop requires all tasks
tasks.forEach (task) -> require "./tasks/#{task}"