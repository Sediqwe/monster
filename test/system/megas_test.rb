require "application_system_test_case"

class MegasTest < ApplicationSystemTestCase
  setup do
    @mega = megas(:one)
  end

  test "visiting the index" do
    visit megas_url
    assert_selector "h1", text: "Megas"
  end

  test "creating a Mega" do
    visit megas_url
    click_on "New Mega"

    check "Active" if @mega.active
    fill_in "Link", with: @mega.link
    fill_in "Title", with: @mega.title
    fill_in "Version", with: @mega.version
    click_on "Create Mega"

    assert_text "Mega was successfully created"
    click_on "Back"
  end

  test "updating a Mega" do
    visit megas_url
    click_on "Edit", match: :first

    check "Active" if @mega.active
    fill_in "Link", with: @mega.link
    fill_in "Title", with: @mega.title
    fill_in "Version", with: @mega.version
    click_on "Update Mega"

    assert_text "Mega was successfully updated"
    click_on "Back"
  end

  test "destroying a Mega" do
    visit megas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mega was successfully destroyed"
  end
end
