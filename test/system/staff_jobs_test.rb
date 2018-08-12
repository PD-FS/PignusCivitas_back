require "application_system_test_case"

class StaffJobsTest < ApplicationSystemTestCase
  setup do
    @staff_job = staff_jobs(:one)
  end

  test "visiting the index" do
    visit staff_jobs_url
    assert_selector "h1", text: "Staff Jobs"
  end

  test "creating a Staff job" do
    visit staff_jobs_url
    click_on "New Staff Job"

    fill_in "Description", with: @staff_job.description
    fill_in "Name", with: @staff_job.name
    click_on "Create Staff job"

    assert_text "Staff job was successfully created"
    click_on "Back"
  end

  test "updating a Staff job" do
    visit staff_jobs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @staff_job.description
    fill_in "Name", with: @staff_job.name
    click_on "Update Staff job"

    assert_text "Staff job was successfully updated"
    click_on "Back"
  end

  test "destroying a Staff job" do
    visit staff_jobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Staff job was successfully destroyed"
  end
end
