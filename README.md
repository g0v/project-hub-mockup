g0v project hub mockup
==================

mockups for the new g0v project hub

doc and discussion: https://g0v.hackpad.com/hQ9RdcSw7Gd

Using:
* Sass
* Compass
* Semantic UI
* Jade
* jQuery
* LiveScript
* Fire.app

Environment
============

Fire.app
------------
* use Fire.app to preview sass and jade at 127.0.0.1:24681
* config.rb is for Fire.app
* tilt_jade.rb is for Jade and Fire.app

Jade -> HTML
------------
* use Fire.app to build views/ to public/
* if build doesn't work: jade -w views -o public

LiveScript -> Json
------------
* compile json.ls data: lsc -cj test.json
