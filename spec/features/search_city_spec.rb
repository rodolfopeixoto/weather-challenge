# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'SearchCity' do

  describe 'Search city', js: true do
    scenario 'with success', :vcr do
      visit root_path
      fill_in 'Cidade', with: 'São Paulo'

      expect(page).to have_text('São Paulo')
    end
  end
end
