# frozen_string_literal: true

require 'rails_helper'

RSpec.describe WeatherApiService, :vcr do
  let!(:api_error_response) { WeatherApiService.new('aaaa').request_weather }
  let!(:api_error_response_empty) { WeatherApiService.new('').request_weather }
  let!(:api) { WeatherApiService.new('São Paulo').request_weather }
  context '.request_weather' do
    it 'when api connect with success' do
      expect(api.temperature.to_i).to be_kind_of(Integer)
    end
  end
  context '.check_error_api' do
    it 'when there is no city' do
      expect(api_error_response[:message]).to eq('Cidade não encontrada.')
    end

    it 'when the city field is empty' do
      expect(api_error_response_empty[:message]).to eq('Cidade não encontrada.')
    end
  end
end
