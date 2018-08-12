require "application_system_test_case"

class CommunityTypesTest < ApplicationSystemTestCase
  setup do
    @community_type = community_types(:one)
  end

  test "visiting the index" do
    visit community_types_url
    assert_selector "h1", text: "Community Types"
  end

  test "creating a Community type" do
    visit community_types_url
    click_on "New Community Type"

    fill_in "Description", with: @community_type.description
    fill_in "Name", with: @community_type.name
    click_on "Create Community type"

    assert_text "Community type was successfully created"
    click_on "Back"
  end

  test "updating a Community type" do
    visit community_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @community_type.description
    fill_in "Name", with: @community_type.name
    click_on "Update Community type"

    assert_text "Community type was successfully updated"
    click_on "Back"
  end

  test "destroying a Community type" do
    visit community_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Community type was successfully destroyed"
  end
end
