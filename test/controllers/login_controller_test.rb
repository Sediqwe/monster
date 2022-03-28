require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get signin" do
    get login_signin_url
    assert_response :success
  end

  test "should get signout" do
    get login_signout_url
    assert_response :success
  end

  test "should get reg" do
    get login_reg_url
    assert_response :success
  end

end
