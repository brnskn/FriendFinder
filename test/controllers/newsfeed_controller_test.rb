require 'test_helper'

class NewsfeedControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get newsfeed_index_url
    assert_response :success
  end

end
