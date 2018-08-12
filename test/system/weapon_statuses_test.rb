require "application_system_test_case"

class WeaponStatusesTest < ApplicationSystemTestCase
  setup do
    @weapon_status = weapon_statuses(:one)
  end

  test "visiting the index" do
    visit weapon_statuses_url
    assert_selector "h1", text: "Weapon Statuses"
  end

  test "creating a Weapon status" do
    visit weapon_statuses_url
    click_on "New Weapon Status"

    fill_in "Description", with: @weapon_status.description
    fill_in "Name", with: @weapon_status.name
    click_on "Create Weapon status"

    assert_text "Weapon status was successfully created"
    click_on "Back"
  end

  test "updating a Weapon status" do
    visit weapon_statuses_url
    click_on "Edit", match: :first

    fill_in "Description", with: @weapon_status.description
    fill_in "Name", with: @weapon_status.name
    click_on "Update Weapon status"

    assert_text "Weapon status was successfully updated"
    click_on "Back"
  end

  test "destroying a Weapon status" do
    visit weapon_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Weapon status was successfully destroyed"
  end
end
