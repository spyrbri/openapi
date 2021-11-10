require "test_helper"

module OpenApi
  class RootTest < Minitest::Test
    def test_root_is_invalid_unless_openapi_is_a_string
      root = OpenApi::Root.instance
      root.openapi = 1
      root.paths = []
      root.info = OpenApi::Info

      assert root.invalid?
      assert_equal ["is not of class String"], root.errors.messages[:openapi]
    end

    def test_root_is_invalid_unless_info_is_an_info_object
      root = OpenApi::Root.instance
      root.info = 1

      assert root.invalid?
      assert_equal ["is not of class OpenApi::Info"], root.errors.messages[:info]
    end

    def test_root_is_invalid_unless_paths_is_an_array
      root = OpenApi::Root.instance
      root.paths = 1

      assert root.invalid?
      assert_equal ["is not of class Array"], root.errors.messages[:paths]
    end
  end
end
