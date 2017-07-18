# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails',              '~> 5.1.2'
# Bootstrap v4
gem 'bootstrap',          git: 'https://github.com/twbs/bootstrap-rubygem'
gem 'font-awesome-rails'
gem 'sprockets-rails',    '>=2.3.2'
gem 'jquery-rails'
gem 'autoprefixer-rails'
gem 'passenger'
gem 'sass-rails',         '~> 5.0'
gem 'uglifier',           '>= 1.3.0'
gem 'coffee-rails',       '~> 4.2'
gem 'turbolinks',         '~> 5'
gem 'jbuilder',           '~> 2.5'
# Use ActiveModel has_secure_password
gem 'bcrypt',             '~> 3.1.7'
# Use Devise for model authentication & CanCanCan for authorization
gem 'devise',             '>=4.3.0'
gem 'cancancan',          '~> 2.0'
# metatags gem for ease of SEO
gem 'meta-tags'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # RSpec for testing
  gem 'rspec-rails', '~> 3.5'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
  # Use SQlite for development and test dbs
  gem 'sqlite3'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen',      '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # RuboCop for ensuring clean Ruby code
  gem 'rubocop', '~> 0.49.1', require: false
  gem 'mry'
  # Brakeman for keeping the application secure
  gem 'brakeman', require: false
end

group :production do
  gem 'pg', '~> 0.18'
end

group :test do
  gem 'guard'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
