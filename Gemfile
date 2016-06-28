source 'https://rubygems.org'

ruby '2.2.4'

gem 'rails', '4.2.6'
gem 'pg'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jquery-turbolinks'
gem 'simple_form'
gem 'foundation-rails'
gem 'hamlit-rails'
gem 'devise'
gem 'pundit'
gem 'figaro'
gem 'refile', require: 'refile/rails', github: 'refile/refile'
gem 'refile-mini_magick'
gem 'cocoon'
gem 'acts_as_list'

group :development do
  gem 'thin'
  gem 'better_errors'
  gem 'rails-erd'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'quiet_assets'
  gem 'ffaker'
  gem 'rails_apps_testing', github: 'beaugaines/rails_apps_testing'
  gem 'letter_opener'
end

group :development, :test do
  gem 'spring'
  gem 'pry-rails'
  gem 'web-console', '~> 2.0'
  gem 'rspec-rails', require: false
  gem 'rspec-mocks'
  gem 'factory_girl_rails'
end

group :test do
  gem 'simplecov', require: false
  gem 'simplecov-rcov', require: false
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'spring-commands-rspec'
  gem 'database_cleaner'
  gem 'formulaic'
end

group :production do
  gem 'rails_12factor'
  gem 'puma'
  gem 'lograge'
end

