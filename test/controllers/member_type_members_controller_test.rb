require 'test_helper'

class MemberTypeMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_type_member = member_type_members(:one)
  end

  test "should get index" do
    get member_type_members_url
    assert_response :success
  end

  test "should get new" do
    get new_member_type_member_url
    assert_response :success
  end

  test "should create member_type_member" do
    assert_difference('MemberTypeMember.count') do
      post member_type_members_url, params: { member_type_member: { member_id: @member_type_member.member_id, member_type_id: @member_type_member.member_type_id } }
    end

    assert_redirected_to member_type_member_url(MemberTypeMember.last)
  end

  test "should show member_type_member" do
    get member_type_member_url(@member_type_member)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_type_member_url(@member_type_member)
    assert_response :success
  end

  test "should update member_type_member" do
    patch member_type_member_url(@member_type_member), params: { member_type_member: { member_id: @member_type_member.member_id, member_type_id: @member_type_member.member_type_id } }
    assert_redirected_to member_type_member_url(@member_type_member)
  end

  test "should destroy member_type_member" do
    assert_difference('MemberTypeMember.count', -1) do
      delete member_type_member_url(@member_type_member)
    end

    assert_redirected_to member_type_members_url
  end
end
