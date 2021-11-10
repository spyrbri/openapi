# frozen_string_literal: true

require "open_api/operation"

module OpenApi
  class Path < Base
    ATTRIBUTES = %i(
      $ref summary description get put post delete options patch trace servers parameters
    ).freeze

    define_attrs ATTRIBUTES

    validates :$ref, type: String, allow_nil: true
    validates :summary, type: String, allow_nil: true
    validates :description, type: String, allow_nil: true
    validates :get, type: OpenApi::Operation, allow_nil: true
    validates :put, type: OpenApi::Operation, allow_nil: true
    validates :post, type: OpenApi::Operation, allow_nil: true
    validates :delete, type: OpenApi::Operation, allow_nil: true
    validates :options, type: OpenApi::Operation, allow_nil: true
    validates :patch, type: OpenApi::Operation, allow_nil: true
    validates :trace, type: OpenApi::Operation, allow_nil: true
    validates :servers, type: OpenApi::Operation, allow_nil: true
    validates :parameters, type: OpenApi::Operation, allow_nil: true
  end
end
