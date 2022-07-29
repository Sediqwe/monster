require 'test_helper'

class User2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user2 = user2s(:one)
  end

  test "should get index" do
    get user2s_url
    assert_response :success
  end

  test "should get new" do
    get new_user2_url
    assert_response :success
  end

  test "should create user2" do
    assert_difference('User2.count') do
      post user2s_url, params: { user2: {  } }
    end

    assert_redirected_to user2_url(User2.last)
  end

  test "should show user2" do
    get user2_url(@user2)
    assert_response :success
  end

  test "should get edit" do
    get edit_user2_url(@user2)
    assert_response :success
  end

  test "should update user2" do
    patch user2_url(@user2), params: { user2: {  } }
    assert_redirected_to user2_url(@user2)
  end

  test "should destroy user2" do
    assert_difference('User2.count', -1) do
      delete user2_url(@user2)
    end

    assert_redirected_to user2s_url
  end
end
