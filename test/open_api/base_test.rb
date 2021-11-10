require "test_helper"

module OpenApi
  class RootTest < Minitest::Test
    def test_base_is_invalid_unless_openapi_is_present
      base = OpenApi::Root.new(openapi: nil)

      assert base.invalid?
      assert_equal ["can't be blank"], base.errors.messages[:openapi]
    end

    def test_base_is_invalid_unless_info_is_present
      base = OpenApi::Root.new(info: nil)

      assert base.invalid?
      assert_equal ["can't be blank"], base.errors.messages[:info]
    end

    def test_base_is_invalid_unless_paths_is_present
      base = OpenApi::Root.new(paths: nil)

      assert base.invalid?
      assert_equal ["can't be blank"], base.errors.messages[:paths]
    end

    def test_base_is_invalid_unless_openapi_is_a_string
      base = OpenApi::Root.new(openapi: 1, paths: [], info: OpenApi::Info)

      assert base.invalid?
      assert_equal ["is not of class String"], base.errors.messages
    end

    def test_base_is_invalid_unless_info_is_an_info_object
      base = OpenApi::Root.new(info: 1)

      assert base.invalid?
      assert_equal ["is not of class OpanApi::Info"], base.errors.messages[:info]
    end

    def test_base_is_invalid_unless_paths_is_an_array
      base = OpenApi::Root.new(paths: 1)

      assert base.invalid?
      assert_equal ["is not of class Array"], base.errors.messages[:paths]
    end
  end
end
