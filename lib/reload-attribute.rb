# frozen_string_literal: true

# Gem namespace
module ReloadAttribute
end

require 'active_record'
require 'reload_attribute/version'
require 'reload_attribute/instance_methods'
ActiveRecord::Base.include ReloadAttribute::InstanceMethods
