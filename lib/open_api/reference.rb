# frozen_string_literal: true

require "open_api/request_body"

module OpenApi
  class Reference < Base
    attribute :$ref

    validates :$ref, type: Boolean
  end
end
