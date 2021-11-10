# frozen_string_literal: true

module OpenApi
  class ExternalDocumentation < Base
    attr_accessor :description, :url

    validates :url, type: String
    validates :description, type: String, allow_nil: true
  end
end
