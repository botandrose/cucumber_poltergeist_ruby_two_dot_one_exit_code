## README

This is a toy app to reproduce an error with cucumber, poltergeist, and ruby 2.1.0 incorrectly returning a zero status code on a failing feature.

To reproduce:

* clone
* make sure you're respecting .ruby-version and on ruby-2.1.0
* bundle
* bundle exec rake
* test should fail

I have found two ways to get this test to pass:

* Comment out `Capybara.default_driver = :poltergeist` in `features/support/env.rb`. This one suggests poltergeist is the culprit, however...
* Comment out `require 'active_record/railtie'` in `config/environment.rb`. Yeah, what? This one really throws me for a loop.

Anyone have any insight? I sure don't.

