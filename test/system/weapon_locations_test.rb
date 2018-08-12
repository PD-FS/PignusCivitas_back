require "application_system_test_case"

class WeaponLocationsTest < ApplicationSystemTestCase
  setup do
    @weapon_location = weapon_locations(:one)
  end

  test "visiting the index" do
    visit weapon_locations_url
    assert_selector "h1", text: "Weapon Locations"
  end

  test "creating a Weapon location" do
    visit weapon_locations_url
    click_on "New Weapon Location"

    fill_in "Contact", with: @weapon_location.contact
    fill_in "Name", with: @weapon_location.name
    fill_in "Notes", with: @weapon_location.notes
    fill_in "Phone", with: @weapon_location.phone
    click_on "Create Weapon location"

    assert_text "Weapon location was successfully created"
    click_on "Back"
  end

  test "updating a Weapon location" do
    visit weapon_locations_url
    click_on "Edit", match: :first

    fill_in "Contact", with: @weapon_location.contact
    fill_in "Name", with: @weapon_location.name
    fill_in "Notes", with: @weapon_location.notes
    fill_in "Phone", with: @weapon_location.phone
    click_on "Update Weapon location"

    assert_text "Weapon location was successfully updated"
    click_on "Back"
  end

  test "destroying a Weapon location" do
    visit weapon_locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Weapon location was successfully destroyed"
  end
end
