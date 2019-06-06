# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'SearchCity' do
  before(:each) do
    visit root_path
    user = FactoryBot.create(:user)
    logged_as(user)
  end

  describe 'Search city', js: true do
    scenario 'with success' do
      fill_in 'city', with: 'Cabo Frio'
      click_on 'Buscar'

      expect(page).to have_text('Cabo Frio')
    end
    # scenario 'without success' do
    #   fill_in 'city', with: 'aaa'
    #   click_on 'Buscar'

    #   expect(page).to have_text('Cidade não encontrada.')
    # end
  end
end
