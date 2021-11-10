# frozen_string_literal: true

require "open_api/contact"
require "open_api/license"

module OpenApi
  class Info < Base
    include Singleton

    ATTRIBUTES = %i(title description terms_of_service contact license version).freeze

    define_attrs ATTRIBUTES

    validates :title, type: String
    validates :version, type: String
    validates :terms_of_service, type: String, allow_nil: true
    validates :contact, type: OpenApi::Contact, allow_nil: true
    validates :license, type: OpenApi::License, allow_nil: true
  end
end
