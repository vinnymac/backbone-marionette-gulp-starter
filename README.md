* [Commands](#commands)
* [Details](#details)

<a name="commands"/>
## Commands
  * gulp - defaults to development
  * gulp test
  * gulp development
  * gulp staging
  * gulp production

<a name="details"/>
## Details
Tests use jasmine, and more specifically gulp-jasmine to test the JavaScript. The tests can be run with the command gulp test. You can add new tests by adding spec files to the /spec directory.

Development sets up a build with watchify listening and error management. That way if a problem occurs or you want to see your changes as you go, you can. Your browser should open when you run gulp development after it completes building.

Staging has no specific difference from production yet. Although the environment variable configuration can differ from production. This way you can test on a non-production server before release.

Production uglifies and minifies the JavaScript and the CSS. It adds revisions to all the release files. It will not listen for changes, and it builds the app to the /build directory. Eventually gulp production will put your build on an Amazon instance of your choosing, but that is TBD.

All builds have specific configurations that can be accessed through the /app/scripts/config folder. HAML Coffee templates have access to these configurations if necessary. I decided to put my configurations all in coffeescript where they are obscured through envify & uglify. To add new configurations just add keys and values to the various environments under /config.

