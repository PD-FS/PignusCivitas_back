require 'test_helper'

class CommunityStaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @community_staff = community_staffs(:one)
  end

  test "should get index" do
    get community_staffs_url
    assert_response :success
  end

  test "should get new" do
    get new_community_staff_url
    assert_response :success
  end

  test "should create community_staff" do
    assert_difference('CommunityStaff.count') do
      post community_staffs_url, params: { community_staff: { community_id: @community_staff.community_id, staff_id: @community_staff.staff_id } }
    end

    assert_redirected_to community_staff_url(CommunityStaff.last)
  end

  test "should show community_staff" do
    get community_staff_url(@community_staff)
    assert_response :success
  end

  test "should get edit" do
    get edit_community_staff_url(@community_staff)
    assert_response :success
  end

  test "should update community_staff" do
    patch community_staff_url(@community_staff), params: { community_staff: { community_id: @community_staff.community_id, staff_id: @community_staff.staff_id } }
    assert_redirected_to community_staff_url(@community_staff)
  end

  test "should destroy community_staff" do
    assert_difference('CommunityStaff.count', -1) do
      delete community_staff_url(@community_staff)
    end

    assert_redirected_to community_staffs_url
  end
end
