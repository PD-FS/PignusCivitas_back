require 'test_helper'

class CheckStaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @check_staff = check_staffs(:one)
  end

  test "should get index" do
    get check_staffs_url
    assert_response :success
  end

  test "should get new" do
    get new_check_staff_url
    assert_response :success
  end

  test "should create check_staff" do
    assert_difference('CheckStaff.count') do
      post check_staffs_url, params: { check_staff: { entry_date: @check_staff.entry_date, exit_date: @check_staff.exit_date, notes: @check_staff.notes, staff_id: @check_staff.staff_id } }
    end

    assert_redirected_to check_staff_url(CheckStaff.last)
  end

  test "should show check_staff" do
    get check_staff_url(@check_staff)
    assert_response :success
  end

  test "should get edit" do
    get edit_check_staff_url(@check_staff)
    assert_response :success
  end

  test "should update check_staff" do
    patch check_staff_url(@check_staff), params: { check_staff: { entry_date: @check_staff.entry_date, exit_date: @check_staff.exit_date, notes: @check_staff.notes, staff_id: @check_staff.staff_id } }
    assert_redirected_to check_staff_url(@check_staff)
  end

  test "should destroy check_staff" do
    assert_difference('CheckStaff.count', -1) do
      delete check_staff_url(@check_staff)
    end

    assert_redirected_to check_staffs_url
  end
end
