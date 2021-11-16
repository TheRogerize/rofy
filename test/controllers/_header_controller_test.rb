require "test_helper"

class HeaderControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get _header_new_url
    assert_response :success
  end

  test "should get create" do
    get _header_create_url
    assert_response :success
  end
end
