# frozen_string_literal: true

require 'sqlite3'
require 'simplecov'
require 'factory_bot'
require 'reload-attribute'

SimpleCov.start

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    FactoryBot.find_definitions
  end
end

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')

ActiveRecord::Schema.define(version: 1) do
  create_table :widgets do |t|
    t.string :foo
    t.integer :bar
    t.text :baz
    t.timestamps
  end
end

class Widget < ActiveRecord::Base
end

FactoryBot.define do
  factory :widget do
    sequence(:foo) { |i| "Foo: #{i}" }
    sequence(:bar)
    sequence(:baz) { |i| "Baz: #{999 - i}" }
  end
end
