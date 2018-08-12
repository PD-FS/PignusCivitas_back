require 'test_helper'

class StaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @staff = staffs(:one)
  end

  test "should get index" do
    get staffs_url
    assert_response :success
  end

  test "should get new" do
    get new_staff_url
    assert_response :success
  end

  test "should create staff" do
    assert_difference('Staff.count') do
      post staffs_url, params: { staff: { address: @staff.address, admission_date: @staff.admission_date, community_id: @staff.community_id, name: @staff.name, notes: @staff.notes, phone: @staff.phone, staff_id: @staff.staff_id, staff_job_id: @staff.staff_job_id } }
    end

    assert_redirected_to staff_url(Staff.last)
  end

  test "should show staff" do
    get staff_url(@staff)
    assert_response :success
  end

  test "should get edit" do
    get edit_staff_url(@staff)
    assert_response :success
  end

  test "should update staff" do
    patch staff_url(@staff), params: { staff: { address: @staff.address, admission_date: @staff.admission_date, community_id: @staff.community_id, name: @staff.name, notes: @staff.notes, phone: @staff.phone, staff_id: @staff.staff_id, staff_job_id: @staff.staff_job_id } }
    assert_redirected_to staff_url(@staff)
  end

  test "should destroy staff" do
    assert_difference('Staff.count', -1) do
      delete staff_url(@staff)
    end

    assert_redirected_to staffs_url
  end
end
