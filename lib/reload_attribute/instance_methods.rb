# frozen_string_literal: true

module ReloadAttribute
  # Methods added to all ActiveRecord models
  module InstanceMethods

    # Updates the models supplied attributes from the database.
    # @param attrs [String] the attributes to reload
    # @return [Hash] the attributes that were reloaded
    # @return [nil] if the model is not persisted
    def reload_attribute(*attrs)
      return if new_record?
      values = self.class.where(id: id).select(attrs.join(', ')).first.slice(*attrs)
      values.each_with_object({}) do |attr, memo|
        name, value = attr
        self[name] = memo[name] = value
        memo
      end
    end
    alias reload_attributes reload_attribute

  end
end
