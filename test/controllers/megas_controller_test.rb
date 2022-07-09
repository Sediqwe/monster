require 'test_helper'

class MegasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mega = megas(:one)
  end

  test "should get index" do
    get megas_url
    assert_response :success
  end

  test "should get new" do
    get new_mega_url
    assert_response :success
  end

  test "should create mega" do
    assert_difference('Mega.count') do
      post megas_url, params: { mega: { active: @mega.active, link: @mega.link, title: @mega.title, version: @mega.version } }
    end

    assert_redirected_to mega_url(Mega.last)
  end

  test "should show mega" do
    get mega_url(@mega)
    assert_response :success
  end

  test "should get edit" do
    get edit_mega_url(@mega)
    assert_response :success
  end

  test "should update mega" do
    patch mega_url(@mega), params: { mega: { active: @mega.active, link: @mega.link, title: @mega.title, version: @mega.version } }
    assert_redirected_to mega_url(@mega)
  end

  test "should destroy mega" do
    assert_difference('Mega.count', -1) do
      delete mega_url(@mega)
    end

    assert_redirected_to megas_url
  end
end
