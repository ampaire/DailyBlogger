require 'test_helper'

class BloggerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blogger_index_url
    assert_response :success
  end

end
