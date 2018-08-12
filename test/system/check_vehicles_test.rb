require "application_system_test_case"

class CheckVehiclesTest < ApplicationSystemTestCase
  setup do
    @check_vehicle = check_vehicles(:one)
  end

  test "visiting the index" do
    visit check_vehicles_url
    assert_selector "h1", text: "Check Vehicles"
  end

  test "creating a Check vehicle" do
    visit check_vehicles_url
    click_on "New Check Vehicle"

    fill_in "Check Vehicle Status", with: @check_vehicle.check_vehicle_status_id
    fill_in "Community", with: @check_vehicle.community_id
    fill_in "Cost", with: @check_vehicle.cost
    fill_in "Entry Date", with: @check_vehicle.entry_date
    fill_in "Exit Date", with: @check_vehicle.exit_date
    fill_in "Notes", with: @check_vehicle.notes
    fill_in "Station", with: @check_vehicle.station
    fill_in "Vehicle", with: @check_vehicle.vehicle_id
    click_on "Create Check vehicle"

    assert_text "Check vehicle was successfully created"
    click_on "Back"
  end

  test "updating a Check vehicle" do
    visit check_vehicles_url
    click_on "Edit", match: :first

    fill_in "Check Vehicle Status", with: @check_vehicle.check_vehicle_status_id
    fill_in "Community", with: @check_vehicle.community_id
    fill_in "Cost", with: @check_vehicle.cost
    fill_in "Entry Date", with: @check_vehicle.entry_date
    fill_in "Exit Date", with: @check_vehicle.exit_date
    fill_in "Notes", with: @check_vehicle.notes
    fill_in "Station", with: @check_vehicle.station
    fill_in "Vehicle", with: @check_vehicle.vehicle_id
    click_on "Update Check vehicle"

    assert_text "Check vehicle was successfully updated"
    click_on "Back"
  end

  test "destroying a Check vehicle" do
    visit check_vehicles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Check vehicle was successfully destroyed"
  end
end
