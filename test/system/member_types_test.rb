require "application_system_test_case"

class MemberTypesTest < ApplicationSystemTestCase
  setup do
    @member_type = member_types(:one)
  end

  test "visiting the index" do
    visit member_types_url
    assert_selector "h1", text: "Member Types"
  end

  test "creating a Member type" do
    visit member_types_url
    click_on "New Member Type"

    fill_in "Description", with: @member_type.description
    fill_in "Name", with: @member_type.name
    click_on "Create Member type"

    assert_text "Member type was successfully created"
    click_on "Back"
  end

  test "updating a Member type" do
    visit member_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @member_type.description
    fill_in "Name", with: @member_type.name
    click_on "Update Member type"

    assert_text "Member type was successfully updated"
    click_on "Back"
  end

  test "destroying a Member type" do
    visit member_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Member type was successfully destroyed"
  end
end
