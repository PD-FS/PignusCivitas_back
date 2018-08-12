require "application_system_test_case"

class WeaponTypesTest < ApplicationSystemTestCase
  setup do
    @weapon_type = weapon_types(:one)
  end

  test "visiting the index" do
    visit weapon_types_url
    assert_selector "h1", text: "Weapon Types"
  end

  test "creating a Weapon type" do
    visit weapon_types_url
    click_on "New Weapon Type"

    fill_in "Name", with: @weapon_type.name
    fill_in "Type", with: @weapon_type.type
    click_on "Create Weapon type"

    assert_text "Weapon type was successfully created"
    click_on "Back"
  end

  test "updating a Weapon type" do
    visit weapon_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @weapon_type.name
    fill_in "Type", with: @weapon_type.type
    click_on "Update Weapon type"

    assert_text "Weapon type was successfully updated"
    click_on "Back"
  end

  test "destroying a Weapon type" do
    visit weapon_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Weapon type was successfully destroyed"
  end
end
