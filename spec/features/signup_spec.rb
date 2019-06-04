require 'rails_helper'

RSpec.feature 'Signup', type: :feature do
  let!(:user) { FactoryBot.create(:user) }
  let(:valid_attributes) { FactoryBot.attributes_for(:user) }

  before do
    visit root_path
    click_link "Sign up"
  end

  context "register a new user" do
    it "when success" do

      fill_in "Nome", with: valid_attributes[:first_name]
      fill_in "Sobrenome", with: valid_attributes[:last_name]
      fill_in "E-mail", with: valid_attributes[:email]
      fill_in "Senha", with: valid_attributes[:password]
      fill_in "Confirmação da Senha", with: valid_attributes[:password]
      click_button "Sign up"

      expect(page).to have_current_path "/"
      expect(page).to have_content "Login efetuado com sucesso."
    end

    it "when unsuccess", js: true do

      fill_in "Nome", with: ''
      fill_in "Sobrenome", with: ''
      fill_in "E-mail", with: valid_attributes[:email]
      fill_in "Senha", with: ''
      fill_in "Confirmação da Senha", with: ''
      click_button "Sign up"

      expect(page).to have_content "Senha não pode ficar em branco"
      expect(page).to have_content "Nome não pode ficar em branco"
      expect(page).to have_content "Sobrenome não pode ficar em branco"
    end
  end
end
