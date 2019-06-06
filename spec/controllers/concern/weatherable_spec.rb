require 'rails_helper'

class FakesController < ApplicationController
  include Weatherable
end

RSpec.describe FakesController, :vcr do

  context '.search_weather' do
    it 'should return an object with the weather' do
      expect(subject.search_weather('São Paulo, BR').city).to eq 'São Paulo'
    end
  end
end
