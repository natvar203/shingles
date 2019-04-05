require 'test_helper'

class ShinglesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shingles_index_url
    assert_response :success
  end

end
