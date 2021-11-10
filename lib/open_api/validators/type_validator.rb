require "active_model"
require "byebug"

class TypeValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value.class == options[:with]

    record.errors.add attribute, (options[:message] || "is not of class #{options[:with]}")
  end
end
