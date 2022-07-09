require 'test_helper'

class MegaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mega_index_url
    assert_response :success
  end

end
