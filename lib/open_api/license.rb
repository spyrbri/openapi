# frozen_string_literal: true

module OpenApi
  class License < Base
    attr_accessor :name, :url

    validates :name, type: String
    validates :url, type: String, allow_nil: true
  end
end
