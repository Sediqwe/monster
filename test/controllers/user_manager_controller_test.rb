require 'test_helper'

class UserManagerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_manager_new_url
    assert_response :success
  end

  test "should get create" do
    get user_manager_create_url
    assert_response :success
  end

end
