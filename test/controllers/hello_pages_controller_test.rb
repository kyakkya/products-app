require "test_helper"

class HelloPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get hello_pages_top_url
    assert_response :success
  end
end
