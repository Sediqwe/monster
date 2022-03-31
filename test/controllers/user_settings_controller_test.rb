require 'test_helper'

class UserSettingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_settings_index_url
    assert_response :success
  end

  test "should get update" do
    get user_settings_update_url
    assert_response :success
  end

end
