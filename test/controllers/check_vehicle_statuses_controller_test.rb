require 'test_helper'

class CheckVehicleStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @check_vehicle_status = check_vehicle_statuses(:one)
  end

  test "should get index" do
    get check_vehicle_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_check_vehicle_status_url
    assert_response :success
  end

  test "should create check_vehicle_status" do
    assert_difference('CheckVehicleStatus.count') do
      post check_vehicle_statuses_url, params: { check_vehicle_status: { description: @check_vehicle_status.description, name: @check_vehicle_status.name } }
    end

    assert_redirected_to check_vehicle_status_url(CheckVehicleStatus.last)
  end

  test "should show check_vehicle_status" do
    get check_vehicle_status_url(@check_vehicle_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_check_vehicle_status_url(@check_vehicle_status)
    assert_response :success
  end

  test "should update check_vehicle_status" do
    patch check_vehicle_status_url(@check_vehicle_status), params: { check_vehicle_status: { description: @check_vehicle_status.description, name: @check_vehicle_status.name } }
    assert_redirected_to check_vehicle_status_url(@check_vehicle_status)
  end

  test "should destroy check_vehicle_status" do
    assert_difference('CheckVehicleStatus.count', -1) do
      delete check_vehicle_status_url(@check_vehicle_status)
    end

    assert_redirected_to check_vehicle_statuses_url
  end
end
