# frozen_string_literal: true

require "open_api/validators/type_validator"
require "open_api/generator"

module OpenApi
  class Error < StandardError; end

  class Base
    include ActiveModel::Model
    include ActiveModel::Validations
    include ActiveModel::Attributes
    include ActiveModel::Serializers::JSON

    def self.define_attrs(attributes)
      attributes.each { attribute _1 }
    end

    def as_json(options={})
      super(options).reject { |k, v| v.nil? }
    end
  end

  def self.setup(&block)
    OpenApi::Generator.setup(&block)
  end
end

require "open_api/root"
