# frozen_string_literal: true

require "open_api/request_body"

module OpenApi
  class RequestBody < Base
    ATTRIBUTES = %i(
      description content required
    ).freeze

    define_attrs ATTRIBUTES

    validates :description, type: String, allow_nil: true
    validates :content, type: Hash
    validates :required, type: Boolean
  end
end
