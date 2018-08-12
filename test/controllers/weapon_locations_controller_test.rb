require 'test_helper'

class WeaponLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weapon_location = weapon_locations(:one)
  end

  test "should get index" do
    get weapon_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_weapon_location_url
    assert_response :success
  end

  test "should create weapon_location" do
    assert_difference('WeaponLocation.count') do
      post weapon_locations_url, params: { weapon_location: { contact: @weapon_location.contact, name: @weapon_location.name, notes: @weapon_location.notes, phone: @weapon_location.phone } }
    end

    assert_redirected_to weapon_location_url(WeaponLocation.last)
  end

  test "should show weapon_location" do
    get weapon_location_url(@weapon_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_weapon_location_url(@weapon_location)
    assert_response :success
  end

  test "should update weapon_location" do
    patch weapon_location_url(@weapon_location), params: { weapon_location: { contact: @weapon_location.contact, name: @weapon_location.name, notes: @weapon_location.notes, phone: @weapon_location.phone } }
    assert_redirected_to weapon_location_url(@weapon_location)
  end

  test "should destroy weapon_location" do
    assert_difference('WeaponLocation.count', -1) do
      delete weapon_location_url(@weapon_location)
    end

    assert_redirected_to weapon_locations_url
  end
end
