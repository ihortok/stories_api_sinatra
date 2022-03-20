source 'http://rubygems.org'

ruby '2.7.5'

gem 'sinatra'
gem 'activerecord', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all'
gem 'puma'
gem 'shotgun'
gem 'bcrypt'
gem 'tux'

group :development do
  gem 'sqlite3'
  gem 'pry'
  gem 'faker'
end

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
end
