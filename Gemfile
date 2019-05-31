source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 5.2.3'
gem 'pg', '~> 0.18.4'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'therubyracer'
gem 'jbuilder', '~> 2.5'
gem 'openweather2'
gem 'rack-cors', require: 'rack/cors'
gem 'rubocop', '~> 0.58.1', require: false

group :development, :test do
  gem 'rspec-rails', '~> 3.8'
  gem 'brakeman', require: false
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'pry-rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '~> 3.8'
  gem 'capybara-webkit', github: 'thoughtbot/capybara-webkit', branch: 'master'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'simplecov', require: false
  gem 'vcr'
  gem 'webmock', '3.0.1'
end
