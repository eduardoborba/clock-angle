require "rubygems"
require "bundler"
Bundler.require(:default)                   # load all the default gems
Bundler.require(Sinatra::Base.environment)  # load all the environment specific gems
require './app/clock_api.rb'
require './lib/clock.rb'