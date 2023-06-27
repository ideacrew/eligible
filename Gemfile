# frozen_string_literal: true

source 'https://rubygems.org'

# Specify your gem's dependencies in eligible.gemspec
gemspec

RAILS_VERSION = (ENV["RAILS_VERSION"] || "7.0.x").sub("x", "0")

%w[railties activemodel actionview].each do |name|
  gem name, "~> #{RAILS_VERSION}"
end

gem "rake"

group :test do
  gem "rspec"
  gem "simplecov", require: false, platforms: :ruby
  gem "simplecov-cobertura", require: false, platforms: :ruby
  gem "rexml", require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rspec'
  gem 'syntax_tree'
  gem 'yard', require: false
end

group :tools do
  gem 'github-markup', platform: :mri
  gem 'pry-byebug', platform: :mri
  gem 'redcarpet', platform: :mri
end