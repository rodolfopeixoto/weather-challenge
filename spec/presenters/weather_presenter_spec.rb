require 'rails_helper'

RSpec.describe WeatherPresenter do

  let(:weather) { double('WeatherService') }

  context 'celsius' do
    let(:weather_presenter) { WeatherPresenter.new(weather) }
    before do
      allow(weather).to receive_messages(temperature: '77.58', min_temperature: '75.2', max_temperature: '79')
    end

    it '.celsius_temperature' do
      expect(weather_presenter.celsius_temperature).to eq '25.0'
    end

    it '.celsius_min_temperature' do
      expect(weather_presenter.celsius_min_temperature).to eq '23.89'
    end

    it '.celsius_max_temperature' do
      expect(weather_presenter.celsius_max_temperature).to eq '26.11'
    end
  end
end
