# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'paranoia', '~> 2.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'pry'
gem 'puma', '~> 4.1'
gem 'rails', '~> 6.0.1'

group :development, :test do
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails', '~> 3.8'
end

group :development do
  gem 'pry-rails'
  gem 'rubocop', '~> 0.76.0', require: false
  gem 'rubocop-rspec'
end

group :test do
  gem 'database_cleaner'
  gem 'fuubar'
  gem 'shoulda'
end
