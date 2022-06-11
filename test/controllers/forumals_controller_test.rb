require 'test_helper'

class ForumalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @forumal = forumals(:one)
  end

  test "should get index" do
    get forumals_url
    assert_response :success
  end

  test "should get new" do
    get new_forumal_url
    assert_response :success
  end

  test "should create forumal" do
    assert_difference('Forumal.count') do
      post forumals_url, params: { forumal: { active: @forumal.active, desc: @forumal.desc, forum_id: @forumal.forum_id, title: @forumal.title, user_id: @forumal.user_id } }
    end

    assert_redirected_to forumal_url(Forumal.last)
  end

  test "should show forumal" do
    get forumal_url(@forumal)
    assert_response :success
  end

  test "should get edit" do
    get edit_forumal_url(@forumal)
    assert_response :success
  end

  test "should update forumal" do
    patch forumal_url(@forumal), params: { forumal: { active: @forumal.active, desc: @forumal.desc, forum_id: @forumal.forum_id, title: @forumal.title, user_id: @forumal.user_id } }
    assert_redirected_to forumal_url(@forumal)
  end

  test "should destroy forumal" do
    assert_difference('Forumal.count', -1) do
      delete forumal_url(@forumal)
    end

    assert_redirected_to forumals_url
  end
end
