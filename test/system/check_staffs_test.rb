require "application_system_test_case"

class CheckStaffsTest < ApplicationSystemTestCase
  setup do
    @check_staff = check_staffs(:one)
  end

  test "visiting the index" do
    visit check_staffs_url
    assert_selector "h1", text: "Check Staffs"
  end

  test "creating a Check staff" do
    visit check_staffs_url
    click_on "New Check Staff"

    fill_in "Entry Date", with: @check_staff.entry_date
    fill_in "Exit Date", with: @check_staff.exit_date
    fill_in "Notes", with: @check_staff.notes
    fill_in "Staff", with: @check_staff.staff_id
    click_on "Create Check staff"

    assert_text "Check staff was successfully created"
    click_on "Back"
  end

  test "updating a Check staff" do
    visit check_staffs_url
    click_on "Edit", match: :first

    fill_in "Entry Date", with: @check_staff.entry_date
    fill_in "Exit Date", with: @check_staff.exit_date
    fill_in "Notes", with: @check_staff.notes
    fill_in "Staff", with: @check_staff.staff_id
    click_on "Update Check staff"

    assert_text "Check staff was successfully updated"
    click_on "Back"
  end

  test "destroying a Check staff" do
    visit check_staffs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Check staff was successfully destroyed"
  end
end
