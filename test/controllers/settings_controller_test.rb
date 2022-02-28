require 'test_helper'

class SettingsControllerTest < ActionDispatch::IntegrationTest
  test "should get start" do
    get settings_start_url
    assert_response :success
  end

end
