API tester
===============

Requirements
------------

* ruby (tested on 1.9.2 but 1.8.7 should work)
* rake
* bundler

Instructions
------------

Copy `./config/config.yml.sample` to `./config/config.yml` and edit settings as you please.
Get a recipe book. Sample recipe books are available in `./config/samples/recipes.yml`.
Run `bundle install` to make sure you have all dependencies.
Run `./bin/test` or `bundle exec ./bin/test`.

Sample recipes
--------------

The one sample recipe included is for a simple REST app. A working version of this app can be found at [https://github.com/cairo140/api-mock](https://github.com/cairo140/api-mock).

The prerequisites to run the app as it is are the following:

* SQLite3
* ruby
* rubygems
* bundler

To get the mock app, run more or less the following:

	git clone git://github.com/cairo140/api-mock.git
	cd api-mock
	bundle install
	bundle exec rake db:migrate
	bundle exec rails s

And you're up and running. After each pass of the test, the app needs to be independently wiped.

	bundle exec rake db:drop
	bundle exec rake db:migrate
