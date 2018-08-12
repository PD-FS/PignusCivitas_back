require 'test_helper'

class WeaponTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weapon_type = weapon_types(:one)
  end

  test "should get index" do
    get weapon_types_url
    assert_response :success
  end

  test "should get new" do
    get new_weapon_type_url
    assert_response :success
  end

  test "should create weapon_type" do
    assert_difference('WeaponType.count') do
      post weapon_types_url, params: { weapon_type: { name: @weapon_type.name, type: @weapon_type.type } }
    end

    assert_redirected_to weapon_type_url(WeaponType.last)
  end

  test "should show weapon_type" do
    get weapon_type_url(@weapon_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_weapon_type_url(@weapon_type)
    assert_response :success
  end

  test "should update weapon_type" do
    patch weapon_type_url(@weapon_type), params: { weapon_type: { name: @weapon_type.name, type: @weapon_type.type } }
    assert_redirected_to weapon_type_url(@weapon_type)
  end

  test "should destroy weapon_type" do
    assert_difference('WeaponType.count', -1) do
      delete weapon_type_url(@weapon_type)
    end

    assert_redirected_to weapon_types_url
  end
end
