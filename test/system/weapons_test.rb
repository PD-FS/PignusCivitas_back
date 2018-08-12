require "application_system_test_case"

class WeaponsTest < ApplicationSystemTestCase
  setup do
    @weapon = weapons(:one)
  end

  test "visiting the index" do
    visit weapons_url
    assert_selector "h1", text: "Weapons"
  end

  test "creating a Weapon" do
    visit weapons_url
    click_on "New Weapon"

    fill_in "Name", with: @weapon.name
    fill_in "Notes", with: @weapon.notes
    fill_in "Weapon Location", with: @weapon.weapon_location_id
    fill_in "Weapon Status", with: @weapon.weapon_status_id
    fill_in "Weapon Type", with: @weapon.weapon_type_id
    click_on "Create Weapon"

    assert_text "Weapon was successfully created"
    click_on "Back"
  end

  test "updating a Weapon" do
    visit weapons_url
    click_on "Edit", match: :first

    fill_in "Name", with: @weapon.name
    fill_in "Notes", with: @weapon.notes
    fill_in "Weapon Location", with: @weapon.weapon_location_id
    fill_in "Weapon Status", with: @weapon.weapon_status_id
    fill_in "Weapon Type", with: @weapon.weapon_type_id
    click_on "Update Weapon"

    assert_text "Weapon was successfully updated"
    click_on "Back"
  end

  test "destroying a Weapon" do
    visit weapons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Weapon was successfully destroyed"
  end
end
