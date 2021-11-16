require "test_helper"

class Pages::SignupControllerTest < ActionDispatch::IntegrationTest
  test "should get signup" do
    get pages_signup_signup_url
    assert_response :success
  end
end
