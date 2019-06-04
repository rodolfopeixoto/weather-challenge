require 'rails_helper'

RSpec.feature 'Favorite City' do

  before do
    visit root_path
    login_user
  end

  describe "when success" do
    it 'register a new favotire city' do
    end
  end

end
