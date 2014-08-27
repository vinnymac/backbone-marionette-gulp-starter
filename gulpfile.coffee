# gulpfile.coffee
# ===========
# Rather than manage one giant configuration file responsible
# for creating multiple tasks, each task has been broken out into
# its own file in gulp/tasks. Any file in that folder gets automatically
# required by the loop in ./gulp/index.js (required below).

# To add a new task, simply add a new task file to gulp/tasks.

# Can now use gulpfile.coffee as the default since gulp version 3.7
# By doing npm install --save-dev coffee-script
# coffeescript will be available for all gulp files

require './gulp'