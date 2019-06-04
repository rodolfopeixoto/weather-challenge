require 'rails_helper'

RSpec.feature 'Signup' do
  let!(:user) { FactoryBot.create(:user) }
  let(:valid_attributes) { FactoryBot.attributes_for(:user) }

  before do
    visit root_path
    click_link "Sign up"
  end

  describe "when success", type: :feature, js: true do
    it "registers a new user" do

      fill_in "Nome", with: valid_attributes[:first_name]
      fill_in "Sobrenome", with: valid_attributes[:last_name]
      fill_in "E-mail", with: valid_attributes[:email]
      fill_in "Senha", with: valid_attributes[:password]
      fill_in "Confirmação da Senha", with: valid_attributes[:password]
      click_button "Sign up"

      expect(page).to have_current_path "/"
      expect(page).to have_content "Login efetuado com sucesso."
    end
  end
  describe "when unsuccess", type: :feature, js: true do

    it "registers a new user" do

      fill_in "Nome", with: ''
      fill_in "Sobrenome", with: ''
      fill_in "E-mail", with: valid_attributes[:email]
      fill_in "Senha", with: ''
      fill_in "Confirmação da Senha", with: ''
      click_button "Sign up"

      expect(page).to have_content "Preecha este campo."
    end
  end
end
