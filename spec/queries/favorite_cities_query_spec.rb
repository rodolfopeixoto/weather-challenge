# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FavoriteCitiesQuery do

  let!(:user){ FactoryBot.create(:user) }
  let!(:city1) { FactoryBot.create(:favorite_city, user: user) }
  let!(:city2) { FactoryBot.create(:favorite_city, user: user) }
  subject { FavoriteCitiesQuery.new(user) }

  describe '.search_cities' do
    it 'return two records' do
      expect(subject.search_cities.count).to eq 2
    end
    it 'return all cities in array' do
      expect(subject.search_cities.map(&:name)).to eq [city1.name, city2.name]
    end
  end
end
