# frozen_string_literal: true

require 'rails_helper'

RSpec.describe WeatherPresenter do
  let(:weather) { double('WeatherService') }
  let(:weather_error) { { message: '' } }
  let(:weather_presenter) { WeatherPresenter.new(weather) }
  let(:weather_presenter_error) { WeatherPresenter.new(weather_error) }
  before do
    allow(weather).to receive_messages(temperature: '77.58', min_temperature: '75.2', max_temperature: '79')
  end

  context 'celsius' do
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
  context '.webservice_status' do
    it 'success' do
      expect(weather_presenter.webservice_status).to eq 'data_temperature'
    end

    it 'message error' do
      expect(weather_presenter_error.webservice_status).to eq 'message_errors'
    end
  end
end
