require "bundler"
Bundler.require(:default)                   # load all the default gems
require './app/clock_api.rb'
require './lib/clock.rb'
require './models/angle.rb'

Mongoid.load!(File.join(File.dirname(__FILE__), 'mongoid.yml'))
Mongoid.raise_not_found_error = false
