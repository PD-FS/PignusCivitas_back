require 'test_helper'

class VehicleTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_type = vehicle_types(:one)
  end

  test "should get index" do
    get vehicle_types_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_type_url
    assert_response :success
  end

  test "should create vehicle_type" do
    assert_difference('VehicleType.count') do
      post vehicle_types_url, params: { vehicle_type: { name: @vehicle_type.name } }
    end

    assert_redirected_to vehicle_type_url(VehicleType.last)
  end

  test "should show vehicle_type" do
    get vehicle_type_url(@vehicle_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_type_url(@vehicle_type)
    assert_response :success
  end

  test "should update vehicle_type" do
    patch vehicle_type_url(@vehicle_type), params: { vehicle_type: { name: @vehicle_type.name } }
    assert_redirected_to vehicle_type_url(@vehicle_type)
  end

  test "should destroy vehicle_type" do
    assert_difference('VehicleType.count', -1) do
      delete vehicle_type_url(@vehicle_type)
    end

    assert_redirected_to vehicle_types_url
  end
end
