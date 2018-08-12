require "application_system_test_case"

class VehiclesTest < ApplicationSystemTestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "visiting the index" do
    visit vehicles_url
    assert_selector "h1", text: "Vehicles"
  end

  test "creating a Vehicle" do
    visit vehicles_url
    click_on "New Vehicle"

    fill_in "Brand", with: @vehicle.brand
    fill_in "Colour", with: @vehicle.colour
    fill_in "Engine Number", with: @vehicle.engine_number
    fill_in "Engine Size", with: @vehicle.engine_size
    fill_in "Model", with: @vehicle.model
    fill_in "Plate Number", with: @vehicle.plate_number
    fill_in "Vehicle Type", with: @vehicle.vehicle_type_id
    fill_in "Year", with: @vehicle.year
    click_on "Create Vehicle"

    assert_text "Vehicle was successfully created"
    click_on "Back"
  end

  test "updating a Vehicle" do
    visit vehicles_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @vehicle.brand
    fill_in "Colour", with: @vehicle.colour
    fill_in "Engine Number", with: @vehicle.engine_number
    fill_in "Engine Size", with: @vehicle.engine_size
    fill_in "Model", with: @vehicle.model
    fill_in "Plate Number", with: @vehicle.plate_number
    fill_in "Vehicle Type", with: @vehicle.vehicle_type_id
    fill_in "Year", with: @vehicle.year
    click_on "Update Vehicle"

    assert_text "Vehicle was successfully updated"
    click_on "Back"
  end

  test "destroying a Vehicle" do
    visit vehicles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vehicle was successfully destroyed"
  end
end
