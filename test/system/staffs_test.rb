require "application_system_test_case"

class StaffsTest < ApplicationSystemTestCase
  setup do
    @staff = staffs(:one)
  end

  test "visiting the index" do
    visit staffs_url
    assert_selector "h1", text: "Staffs"
  end

  test "creating a Staff" do
    visit staffs_url
    click_on "New Staff"

    fill_in "Address", with: @staff.address
    fill_in "Admission Date", with: @staff.admission_date
    fill_in "Community", with: @staff.community_id
    fill_in "Name", with: @staff.name
    fill_in "Notes", with: @staff.notes
    fill_in "Phone", with: @staff.phone
    fill_in "Staff", with: @staff.staff_id
    fill_in "Staff Job", with: @staff.staff_job_id
    click_on "Create Staff"

    assert_text "Staff was successfully created"
    click_on "Back"
  end

  test "updating a Staff" do
    visit staffs_url
    click_on "Edit", match: :first

    fill_in "Address", with: @staff.address
    fill_in "Admission Date", with: @staff.admission_date
    fill_in "Community", with: @staff.community_id
    fill_in "Name", with: @staff.name
    fill_in "Notes", with: @staff.notes
    fill_in "Phone", with: @staff.phone
    fill_in "Staff", with: @staff.staff_id
    fill_in "Staff Job", with: @staff.staff_job_id
    click_on "Update Staff"

    assert_text "Staff was successfully updated"
    click_on "Back"
  end

  test "destroying a Staff" do
    visit staffs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Staff was successfully destroyed"
  end
end
