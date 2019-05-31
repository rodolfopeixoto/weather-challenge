require 'rails_helper'

RSpec.describe WeatherService do
  let!(:api) { WeatherService.new('Sao Paulo,BR').request_weather }
  it '.request_weather', :vcr do
    expect(api.temperature.to_i).to be_kind_of(Integer)
  end
end
