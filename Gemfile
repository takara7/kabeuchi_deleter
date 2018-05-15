# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'sinatra'
gem 'sass'
gem 'slim'
gem 'twitter'
gem 'omniauth-twitter'
gem 'dotenv'
gem 'rack-flash3'

group :test do
  gem 'rspec'
end

group :development do
  gem 'sinatra-contrib', require: 'sinatra/reloader'
  gem 'racksh'
  gem 'pry-byebug'
end
