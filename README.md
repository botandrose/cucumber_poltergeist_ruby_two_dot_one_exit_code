## README

This is a toy app to reproduce an error with Cucumber-Rails, Poltergeist, and Ruby 2.1.x incorrectly returning a zero status code on a failing feature.

To reproduce:

1. clone
2. make sure you're respecting .ruby-version and on ruby-2.1.1
3. bundle
4. bundle exec rake
5. tests should fail

This bug appears to have three constituents. Remove any one of these, and the problem disappears.

1. Minitest.autorun (loaded by cucumber/rails via rails/test_help via active_support/testing/autorun when ActiveRecord::Base is present)
2. Poltergeist driver
3. Ruby 2.1.x

The gist of it is that Minitest.autorun is clearly messing with the exit codes. However, I don't think that Minitest is solely to blame, because the problem disappears when using rack-test instead of poltergeist. Cucumber includes a project named multi_test that attempts to clobber other gem's exit code shenanigans, but this seems like a bandaid... I think it'd be ideal to track down the error itself. And why does this only happen with Ruby 2.1?

