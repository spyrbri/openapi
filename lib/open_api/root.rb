# frozen_string_literal: true

require "open_api/boolean"
require "open_api/info"
require "open_api/external_documentation"
require "open_api/path"

module OpenApi
  class Root < Base
    include Singleton

    ATTRIBUTES = %i(openapi info servers paths components security tags external_docs).freeze

    define_attrs ATTRIBUTES

    validates :openapi, type: String
    validates :info, type: OpenApi::Info
    validates :paths, type: Array

    validates :servers, type: Array, allow_nil: true
    validates :components, type: Array, allow_nil: true
    validates :security, type: Array, allow_nil: true
    validates :tags, type: Array, allow_nil: true
    validates :external_docs, type: OpenApi::ExternalDocumentation, allow_nil: true
  end
end
