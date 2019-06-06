require 'rails_helper'

RSpec.feature 'Favorite City' do

  let(:authed_user) { create(:user) }

  before do
    create_logged_in_user(authed_user)
    visit root_path
  end

  describe "when success" do
    it 'register a new favotire city' do
      click_link "#{I18n.t('.menu.favorite_cities')}"
      click_link "#{I18n.t('.buttons.submit')} #{I18n.t('.favorite_cities.city')}"
      fill_in 'Nome', with: 'Cabo Frio, RJ, Brasil'
      click_button "#{I18n.t('.buttons.submit')}"

      expect(page).to have_content 'Cidade cadastrada com sucesso.'
    end
  end

end
