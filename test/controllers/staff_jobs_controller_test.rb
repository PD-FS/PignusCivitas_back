require 'test_helper'

class StaffJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @staff_job = staff_jobs(:one)
  end

  test "should get index" do
    get staff_jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_staff_job_url
    assert_response :success
  end

  test "should create staff_job" do
    assert_difference('StaffJob.count') do
      post staff_jobs_url, params: { staff_job: { description: @staff_job.description, name: @staff_job.name } }
    end

    assert_redirected_to staff_job_url(StaffJob.last)
  end

  test "should show staff_job" do
    get staff_job_url(@staff_job)
    assert_response :success
  end

  test "should get edit" do
    get edit_staff_job_url(@staff_job)
    assert_response :success
  end

  test "should update staff_job" do
    patch staff_job_url(@staff_job), params: { staff_job: { description: @staff_job.description, name: @staff_job.name } }
    assert_redirected_to staff_job_url(@staff_job)
  end

  test "should destroy staff_job" do
    assert_difference('StaffJob.count', -1) do
      delete staff_job_url(@staff_job)
    end

    assert_redirected_to staff_jobs_url
  end
end
