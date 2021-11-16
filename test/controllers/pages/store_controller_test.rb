require "test_helper"

class Pages::StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get store" do
    get pages_store_store_url
    assert_response :success
  end
end
