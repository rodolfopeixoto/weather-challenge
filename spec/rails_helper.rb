# frozen_string_literal: true

ENV['RAILS_ENV'] ||= 'test'

require 'spec_helper'
require File.expand_path('../config/environment', __dir__)
require 'rails/all'
require 'rspec/rails'
require 'capybara/rspec'
require 'simplecov'
require 'capybara/rspec'
require 'webmock/rspec'
require 'vcr'
require 'shoulda-matchers'
require 'database_cleaner'
require 'capybara-webkit'
require 'devise'
require 'simplecov'

SimpleCov.start
Dir[Rails.root.join('spec/support/**/*.rb')].each { |file| require file }

require File.expand_path('../config/environment', __dir__)
abort('The Rails environment is running in production mode!') if Rails.env.production?
require 'rspec/rails'
begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => error
  puts error.to_s.strip
  exit 1
end
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.use_transactional_fixtures = false
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
  config.order = 'random'

  config.include Devise::Test::ControllerHelpers, type: :controller
  config.include Authentication

  Capybara.javascript_driver = :webkit
  Capybara.server = :webrick
end
