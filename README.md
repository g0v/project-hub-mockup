g0v project hub mockup
==================

mockups for the new g0v project hub

how to join: http://g0v.github.io/project-hub-mockup/public/about

doc and discussion: https://g0v.hackpad.com/hQ9RdcSw7Gd

license: CC0

Development
============

Using:
* Sass
* Compass
* Semantic UI
* Jade
* jQuery
* Handlebars
* Underscore
* CSV-JS
* LiveScript

Local server and compilation:
* Fire.app
* Gulp (TBD)

Deploy to gh-pages:
* for Windows: run deploy.bat on master branch
* future: Travis (TBD)

Local Server
------------
* using Fire.app to preview sass and jade at 127.0.0.1:24681
* config.rb is for Fire.app
* tilt_jade.rb is for Jade and Fire.app

Jade -> HTML
------------
* using Fire.app to build views/ to public/
* if build doesn't work: jade views -o public

LiveScript -> Json
------------
* compile json.ls data: lsc -cj test.json
