# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'SearchCity' do
  before do
    visit root_path
  end

  describe 'Search city', js: true do
    scenario 'with success' do
      fill_in 'city', with: 'São Paulo'
      click_on 'Buscar'

      expect(page).to have_text('São Paulo')
    end
    scenario 'without success' do
      fill_in 'city', with: ''
      click_on 'Buscar'

      expect(page).to have_text('Cidade não encontrada.')
    end
  end
end
