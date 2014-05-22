## README

This is a toy app to reproduce an error with Cucumber, Poltergeist, and Ruby 2.1.x incorrectly returning a zero status code on a failing feature.

To reproduce:

1. clone
2. make sure you're respecting .ruby-version and on ruby-2.1.1
3. bundle
4. bundle exec rake
5. test should fail

I have found four ways to get this test to pass:

1. Comment out `Capybara.default_driver = :poltergeist` in `features/support/env.rb`. This one suggests Poltergeist is the culprit. However...
2. Replace the testing command in `Rakefile` with `rspec`, using an identical test written with RSpec and Poltergeist. This confirms that cucumber's involvement is part of the problem. However...
3. Comment out `require 'active_record/railtie'` in `config/environment.rb`. Yeah, what? This one really throws me for a loop.
4. Downgrade Ruby to 2.0.0. ???

So it appears that this bug is due to the combination of all four components?? I think I've pushed this as far as I can. I'm not familiar with the internals of Cucumber, Poltergeist, ActiveRecord, or Ruby. Anyone have any insight?

