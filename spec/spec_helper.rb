# add this to spec/spec_helper.rb

ENV['RACK_ENV'] = 'test'

# require our Sinatra app file
require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'features/web_helper'

# tell Capybara about our app class
Capybara.app = Battle