# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'reload_attribute/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'reload-attribute'
  s.version     = ReloadAttribute::VERSION
  s.authors     = ['Taylor Yelverton']
  s.email       = ['rubygems@yelvert.io']
  s.homepage    = 'https://github.com/yelvert/reload-attribute'
  s.summary     = 'Provides ActiveRecord instances with a method to re-fetch specific attributes from the database'
  s.description = 'Provides ActiveRecord instances with a method to re-fetch specific attributes from the database'
  s.license     = 'MIT'

  raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.' unless s.respond_to?(:metadata)

  s.files = Dir['lib/**/*', 'MIT-LICENSE', 'README.md']
  s.require_paths = ['lib']

  s.add_dependency 'activerecord', '>= 5.2.0'
  s.add_dependency 'activesupport', '>= 5.2.0'

  s.add_development_dependency 'factory_bot'
  s.add_development_dependency 'rdiscount'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rspec-simplecov'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'simplecov-json'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'yard'
end
