require 'rails_helper'

RSpec.describe WeatherApiService do
  let!(:api) { WeatherApiService.new('Sao Paulo,BR').request_weather }
  it '.request_weather', :vcr do
    expect(api.temperature.to_i).to be_kind_of(Integer)
  end
end
