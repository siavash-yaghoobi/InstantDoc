require 'test_helper'

class SearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get searches_home_url
    assert_response :success
  end

end
