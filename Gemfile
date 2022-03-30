# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.5'

gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'openweather2'
gem 'pg', '~> 0.18.4'
gem 'puma', '~> 4.3'
gem 'rack-cors', require: 'rack/cors'
gem 'rails', '~> 5.2.3'
gem 'rubocop', '~> 0.58.1', require: false
gem 'sass-rails', '~> 5.0'
gem 'mini_racer', platforms: :ruby
gem 'uglifier', '>= 1.3.0'
gem 'devise'
gem 'bootstrap', '~> 4.3.1'

group :development, :test do
  gem 'brakeman', require: false
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'guard-rspec'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 3.8'
end

group :development do
  gem 'guard-brakeman'
  gem 'guard-rails', require: false
  gem 'guard-rubocop'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '~> 3.8'
  gem 'capybara-webkit', github: 'thoughtbot/capybara-webkit', branch: 'master'
  gem 'database_cleaner'
  gem 'rails-controller-testing'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'vcr'
  gem 'webmock', '3.0.1'
  gem 'simplecov', require: false
  gem 'rack_session_access'
end
