# frozen_string_literal: true

require "open_api/request_body"
require "open_api/reference"

module OpenApi
  class Operation < Base
    ATTRIBUTES = %i(
      tags summary description external_docs operation_id parameters
      request_body responses callbacks deprecated security servers
    ).freeze

    define_attrs ATTRIBUTES

    validates :tags, type: Array, allow_nil: true
    validates :summary, type: String, allow_nil: true
    validates :description, type: String, allow_nil: true
    validates :external_docs, type: OpenApi::ExternalDocumentation, allow_nil: true
    validates :operation_id, type: String, allow_nil: true
    validates :parameters, type: Array, allow_nil: true
    validates :request_body, type: [RequestBody, Reference], allow_nil: true
    validates :responses, type: Array
    validates :callbacks, type: Hash, allow_nil: true
    validates :deprecated, type: Boolean, allow_nil: true
    validates :security, type: Array, allow_nil: true
    validates :servers, type: Array, allow_nil: true
  end
end

