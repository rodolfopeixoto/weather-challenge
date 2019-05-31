require 'spec_helper'
require 'capybara/rspec'
require 'simplecov'
require 'rspec/rails'
require 'capybara/rspec'
Dir[Rails.root.join('spec/support/**/*.rb')].each { |file| require file }

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'
begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => error
  puts error.to_s.strip
  exit 1
end
RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
  config.order = 'random'
end

Capybara.javascript_driver = :webkit
Capybara.server = :webrick
