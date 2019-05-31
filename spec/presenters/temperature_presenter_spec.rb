require 'rails_helper'

RSpec.describe TemperaturePresenter do

  let(:weather) { double('WeatherService') }

  context 'celsius' do
    let(:temperature_presenter) { TemperaturePresenter.new(weather) }
    before do
      allow(weather).to receive_messages(temperature: '77.58', min_temperature: '75.2', max_temperature: '79')
    end

    it '.celsius_temperature' do
      expect(temperature_presenter.celsius_temperature).to eq '25.0'
    end

    it '.celsius_min_temperature' do
      expect(temperature_presenter.celsius_min_temperature).to eq '23.89'
    end

    it '.celsius_max_temperature' do
      expect(temperature_presenter.celsius_max_temperature).to eq '26.11'
    end

    it '.to_celsius' do
      expect(temperature_presenter.send(:to_celsius, '77.58')).to eq '25.0'
    end
  end
end
