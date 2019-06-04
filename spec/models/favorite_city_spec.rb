require 'rails_helper'

RSpec.describe FavoriteCity, type: :model do
  context 'validates' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
  context 'associations' do
    it { should belong_to(:user) }
  end
end
