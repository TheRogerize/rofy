require "test_helper"

class Pages::LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get pages_login_login_url
    assert_response :success
  end
end
