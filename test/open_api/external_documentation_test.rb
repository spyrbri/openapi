# frozen_string_literal: true

require "test_helper"

module OpenApi
  class RootTest < Minitest::Test
    def test_is_invalid_if_url_is_not_a_string
      doc = OpenApi::ExternalDocumentation.new(url: nil)

      assert doc.invalid?
      assert_equal ["is not of class String"], doc.errors.messages[:url]
    end

    def test_is_invalid_if_description_is_not_a_string
      doc = OpenApi::ExternalDocumentation.new(description: 1)

      assert doc.invalid?
      assert_equal ["is not of class String"], doc.errors.messages[:description]
    end

    def test_is_valid_if_url_is_a_string
      doc = OpenApi::ExternalDocumentation.new(url: "whatever")

      assert doc.valid?
    end
  end
end
