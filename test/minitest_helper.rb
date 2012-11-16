ENV["RAILS_ENV"] = 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'spork'
Spork.prefork do
  require 'minitest/autorun'
  require 'minitest/rails'

  # Uncomment if you want Capybara in accceptance/integration tests
  require 'minitest/rails/capybara'

  # Uncomment if you want awesome colorful output
  require 'minitest/pride'

  class MiniTest::Rails::ActiveSupport::TestCase
  end

  # Do you want all existing Rails tests to use MiniTest::Rails?
  # Comment out the following and either:
  # A) Change the require on the existing tests to `require "minitest_helper"`
  # B) Require this file's code in test_helper.rb

  MiniTest::Rails.override_testunit!
end

Spork.each_run do

end

