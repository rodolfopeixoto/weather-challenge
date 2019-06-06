require 'rails_helper'

RSpec.feature 'Favorite City' do

  let(:user) { FactoryBot.create(:user) }

  before do
    visit root_path
    sign_in(user)
  end

  describe "when success" do
    it 'register a new favotire city' do
      click_link 'Cidades Favoritas'
      fill_in 'Nome', with: 'Cabo Frio, RJ, Brasil'
      click_button 'Cadastrar'

      expect(page).to have_content 'Cidade cadastrada com sucesso.'
    end
  end

end
