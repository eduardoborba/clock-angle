require "spec_helper"

RSpec.describe ClockApi do
  def app
    ClockApi
  end

  describe 'GET /rest/clocks with hours and minutes' do
    it 'returns the angle between the hours and minutes pointer' do
      get '/rest/clock/6/0'

      expect(last_response.status).to eq 200
      expect(last_response.body).to eq({ angle: 180.0 }.to_json)
    end

    it 'returns the angle when minutes is not present' do
      get '/rest/clock/6'

      expect(last_response.status).to eq 200
      expect(last_response.body).to eq({ angle: 180.0 }.to_json)
    end
  end
end