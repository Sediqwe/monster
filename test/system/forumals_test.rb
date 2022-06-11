require "application_system_test_case"

class ForumalsTest < ApplicationSystemTestCase
  setup do
    @forumal = forumals(:one)
  end

  test "visiting the index" do
    visit forumals_url
    assert_selector "h1", text: "Forumals"
  end

  test "creating a Forumal" do
    visit forumals_url
    click_on "New Forumal"

    check "Active" if @forumal.active
    fill_in "Desc", with: @forumal.desc
    fill_in "Forum", with: @forumal.forum_id
    fill_in "Title", with: @forumal.title
    fill_in "User", with: @forumal.user_id
    click_on "Create Forumal"

    assert_text "Forumal was successfully created"
    click_on "Back"
  end

  test "updating a Forumal" do
    visit forumals_url
    click_on "Edit", match: :first

    check "Active" if @forumal.active
    fill_in "Desc", with: @forumal.desc
    fill_in "Forum", with: @forumal.forum_id
    fill_in "Title", with: @forumal.title
    fill_in "User", with: @forumal.user_id
    click_on "Update Forumal"

    assert_text "Forumal was successfully updated"
    click_on "Back"
  end

  test "destroying a Forumal" do
    visit forumals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Forumal was successfully destroyed"
  end
end
