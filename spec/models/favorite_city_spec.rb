require 'rails_helper'

RSpec.describe FavotireCity, type: :model do
  context 'validations' do
    it { should validate_presence_of(:name) }
  end

  context 'associations' do
    it { should belong_to(:user) }
  end
end
