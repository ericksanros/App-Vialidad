require "test_helper"

class DropoffControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dropoff_index_url
    assert_response :success
  end
end
