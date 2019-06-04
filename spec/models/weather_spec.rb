# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Weather do
  let(:weather) { Weather.new }

  it '.to_celsius' do
    expect(weather.send(:to_celsius, '77.58')).to eq '25.0'
  end
end
