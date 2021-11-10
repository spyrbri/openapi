# frozen_string_literal: true

module OpenApi
  class Server < Base
    attr_accessor :url, :description, :variables

    validates :url, type: String
    validates :description, type: String
    validates :variables, type: Hash
  end
end
