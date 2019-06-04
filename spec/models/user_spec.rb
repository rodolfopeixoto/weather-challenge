require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }

    it { should validate_uniqueness_of(:email) }
  end

  context 'associations' do
    it { should have_many(:favorite_cities).dependent(:destroy) }
  end
end
