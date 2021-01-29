require 'sinatra'
require 'json'

class ClockApi < Sinatra::Base
  get '/rest/clock/:hours/:minutes' do
    clock = Clock.new(hours: params[:hours].to_i, minutes: params[:minutes].to_i)
    { angle: clock.calculate_angle }.to_json
  end

  get '/rest/clock/:hours' do
    clock = Clock.new(hours: params[:hours].to_i)
    { angle: clock.calculate_angle }.to_json
  end
end