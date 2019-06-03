require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    it { should validate_presence_of(:email) }
  end

  context 'associations' do
    it { should have_many(:favorite_cities).dependent(:destroy) }
  end
end
