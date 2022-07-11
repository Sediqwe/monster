require "application_system_test_case"

class ListsTest < ApplicationSystemTestCase
  setup do
    @list = lists(:one)
  end

  test "visiting the index" do
    visit lists_url
    assert_selector "h1", text: "Lists"
  end

  test "creating a List" do
    visit lists_url
    click_on "New List"

    check "Active" if @list.active
    fill_in "Desc", with: @list.desc
    fill_in "Link", with: @list.link
    fill_in "List type", with: @list.list_type
    fill_in "Local", with: @list.local
    check "Ready" if @list.ready
    fill_in "Title", with: @list.title
    fill_in "Version", with: @list.version
    click_on "Create List"

    assert_text "List was successfully created"
    click_on "Back"
  end

  test "updating a List" do
    visit lists_url
    click_on "Edit", match: :first

    check "Active" if @list.active
    fill_in "Desc", with: @list.desc
    fill_in "Link", with: @list.link
    fill_in "List type", with: @list.list_type
    fill_in "Local", with: @list.local
    check "Ready" if @list.ready
    fill_in "Title", with: @list.title
    fill_in "Version", with: @list.version
    click_on "Update List"

    assert_text "List was successfully updated"
    click_on "Back"
  end

  test "destroying a List" do
    visit lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "List was successfully destroyed"
  end
end
