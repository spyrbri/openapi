# frozen_string_literal: true

module OpenApi
  class Contact < Base
    attr_accessor :name, :url, :email

    validates :name, type: String
    validates :url, type: String
    validates :email, type: String
  end
end
