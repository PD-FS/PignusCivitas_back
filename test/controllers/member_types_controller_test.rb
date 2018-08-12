require 'test_helper'

class MemberTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_type = member_types(:one)
  end

  test "should get index" do
    get member_types_url
    assert_response :success
  end

  test "should get new" do
    get new_member_type_url
    assert_response :success
  end

  test "should create member_type" do
    assert_difference('MemberType.count') do
      post member_types_url, params: { member_type: { description: @member_type.description, name: @member_type.name } }
    end

    assert_redirected_to member_type_url(MemberType.last)
  end

  test "should show member_type" do
    get member_type_url(@member_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_type_url(@member_type)
    assert_response :success
  end

  test "should update member_type" do
    patch member_type_url(@member_type), params: { member_type: { description: @member_type.description, name: @member_type.name } }
    assert_redirected_to member_type_url(@member_type)
  end

  test "should destroy member_type" do
    assert_difference('MemberType.count', -1) do
      delete member_type_url(@member_type)
    end

    assert_redirected_to member_types_url
  end
end
