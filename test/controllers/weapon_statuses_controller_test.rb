require 'test_helper'

class WeaponStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weapon_status = weapon_statuses(:one)
  end

  test "should get index" do
    get weapon_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_weapon_status_url
    assert_response :success
  end

  test "should create weapon_status" do
    assert_difference('WeaponStatus.count') do
      post weapon_statuses_url, params: { weapon_status: { description: @weapon_status.description, name: @weapon_status.name } }
    end

    assert_redirected_to weapon_status_url(WeaponStatus.last)
  end

  test "should show weapon_status" do
    get weapon_status_url(@weapon_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_weapon_status_url(@weapon_status)
    assert_response :success
  end

  test "should update weapon_status" do
    patch weapon_status_url(@weapon_status), params: { weapon_status: { description: @weapon_status.description, name: @weapon_status.name } }
    assert_redirected_to weapon_status_url(@weapon_status)
  end

  test "should destroy weapon_status" do
    assert_difference('WeaponStatus.count', -1) do
      delete weapon_status_url(@weapon_status)
    end

    assert_redirected_to weapon_statuses_url
  end
end
