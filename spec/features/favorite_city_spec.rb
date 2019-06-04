require 'rails_helper'

RSpec.feature 'Favorite City' do

  before do
    visit root_path
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
  end

  describe "when success" do
    it 'register a new favotire city', js: true do
      click_link '( + ) Cidades Favoritas'
      fill_in 'Nome', with: 'Cabo Frio, RJ, Brasil'
      click_button 'Cadastrar'

      expect(page).to have_content 'Cidade cadastrada com sucesso.'
    end
  end

end
