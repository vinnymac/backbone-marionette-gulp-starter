# backbone-marionette-gulp-starter

Another Gulp Starter. This time using CoffeeScript, HAML Coffee, SASS, Jasmine, Backbone, Marionette, Underscore, and jQuery. Includes different build scenarios such as development, testing, staging, and production.

##### Table of Contents
* [Installation](#installation)
* [Usage](#usage)
    * [Tasks](#tasks)
    * [Environments](#environments)
* [Contributing](#contributing)
* [Author](#author)
* [License](#license)

<a name="installation"/>
## Installation

Clone this repo into a directory.

Make sure you have the latest compass gem installed before you begin. This is a requirement for getting the SASS into CSS. If you already have rails or ruby, you should be able to just install the gem. Otherwise you may need to setup those first.

    gem install compass

Next install the required node modules.

    npm install

Run the default task.

    gulp

Note: You may want to install gulp globally.

    sudo npm install -g gulp

<a name="usage"/>
## Usage

<a name="Tasks"/>
### Tasks

The default build is the same as development. This can easily be changed by modifying the gulp task called 'default'. Replace 'setDevelopment' with another build or some other task you want to be the default.

    gulp

Tests use jasmine, and more specifically gulp-jasmine to test the JavaScript. The tests can be run with the command gulp test. You can add new tests by adding spec files to the /spec directory.

    gulp test

Development sets up a build with watchify listening and error management. That way if a problem occurs or you want to see your changes as you go, you can. Your browser should open when you run gulp development after it completes building.

    gulp development

Staging has no specific difference from production yet. Although the environment variable configuration can differ from production. This way you can test on a non-production server before release.

    gulp staging

Production uglifies and minifies the JavaScript and the CSS. It adds revisions to all the release files. It will not listen for changes, and it builds the app to the /build directory. Eventually gulp production will put your build on an Amazon instance of your choosing, but that is TBD.

    gulp production

<a name="Environments"/>
### Environments

All builds have specific configurations that can be accessed through the /app/scripts/config folder. HAML Coffee templates have access to these configurations if necessary. I decided to put my configurations all in coffeescript where they are obscured through envify & uglify. To add new configurations just add keys and values to the various environments under /config.

<a name="contributing"/>
## Contributing

1. Fork it ( https://github.com/[my-github-username]/backbone-marionette-gulp-starter/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

<a name="author"/>
## Author

Vincent Taverna, vinny@getlua.com, [vinnymac.github.io](http://vinnymac.github.io)

<a name="license"/>
## License

backbone-marionette-gulp-starter is available under the MIT license. See the [LICENSE](LICENSE.txt) file for more information.
