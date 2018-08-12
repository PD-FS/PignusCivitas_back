require "application_system_test_case"

class CheckVehicleStatusesTest < ApplicationSystemTestCase
  setup do
    @check_vehicle_status = check_vehicle_statuses(:one)
  end

  test "visiting the index" do
    visit check_vehicle_statuses_url
    assert_selector "h1", text: "Check Vehicle Statuses"
  end

  test "creating a Check vehicle status" do
    visit check_vehicle_statuses_url
    click_on "New Check Vehicle Status"

    fill_in "Description", with: @check_vehicle_status.description
    fill_in "Name", with: @check_vehicle_status.name
    click_on "Create Check vehicle status"

    assert_text "Check vehicle status was successfully created"
    click_on "Back"
  end

  test "updating a Check vehicle status" do
    visit check_vehicle_statuses_url
    click_on "Edit", match: :first

    fill_in "Description", with: @check_vehicle_status.description
    fill_in "Name", with: @check_vehicle_status.name
    click_on "Update Check vehicle status"

    assert_text "Check vehicle status was successfully updated"
    click_on "Back"
  end

  test "destroying a Check vehicle status" do
    visit check_vehicle_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Check vehicle status was successfully destroyed"
  end
end
