require 'test_helper'

class CheckVehiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @check_vehicle = check_vehicles(:one)
  end

  test "should get index" do
    get check_vehicles_url
    assert_response :success
  end

  test "should get new" do
    get new_check_vehicle_url
    assert_response :success
  end

  test "should create check_vehicle" do
    assert_difference('CheckVehicle.count') do
      post check_vehicles_url, params: { check_vehicle: { check_vehicle_status_id: @check_vehicle.check_vehicle_status_id, community_id: @check_vehicle.community_id, cost: @check_vehicle.cost, entry_date: @check_vehicle.entry_date, exit_date: @check_vehicle.exit_date, notes: @check_vehicle.notes, station: @check_vehicle.station, vehicle_id: @check_vehicle.vehicle_id } }
    end

    assert_redirected_to check_vehicle_url(CheckVehicle.last)
  end

  test "should show check_vehicle" do
    get check_vehicle_url(@check_vehicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_check_vehicle_url(@check_vehicle)
    assert_response :success
  end

  test "should update check_vehicle" do
    patch check_vehicle_url(@check_vehicle), params: { check_vehicle: { check_vehicle_status_id: @check_vehicle.check_vehicle_status_id, community_id: @check_vehicle.community_id, cost: @check_vehicle.cost, entry_date: @check_vehicle.entry_date, exit_date: @check_vehicle.exit_date, notes: @check_vehicle.notes, station: @check_vehicle.station, vehicle_id: @check_vehicle.vehicle_id } }
    assert_redirected_to check_vehicle_url(@check_vehicle)
  end

  test "should destroy check_vehicle" do
    assert_difference('CheckVehicle.count', -1) do
      delete check_vehicle_url(@check_vehicle)
    end

    assert_redirected_to check_vehicles_url
  end
end
