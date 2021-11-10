# frozen_string_literal: true

require "test_helper"

module OpenApi
  class GenerateTest < Minitest::Test
    OpenApi.setup do
      openapi "3.0.0"
      info({
        title: "Testing API",
        version: "1.0.0"
      })
      paths([
        summary: "This is a summary"
      ])
    end

    def test_generate
      openapi = OpenApi::Root.instance

      expected_result = {
        "openapi" => "3.0.0",
        "info" => {
          "title" => "Testing API", "version" => "1.0.0"
        }
      }

      assert_not openapi.valid?
      assert_equal expected_result, JSON.parse(openapi.to_json)
    end
  end
end
