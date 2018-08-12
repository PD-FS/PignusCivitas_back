require "application_system_test_case"

class DayOfWeeksTest < ApplicationSystemTestCase
  setup do
    @day_of_week = day_of_weeks(:one)
  end

  test "visiting the index" do
    visit day_of_weeks_url
    assert_selector "h1", text: "Day Of Weeks"
  end

  test "creating a Day of week" do
    visit day_of_weeks_url
    click_on "New Day Of Week"

    fill_in "Name", with: @day_of_week.name
    click_on "Create Day of week"

    assert_text "Day of week was successfully created"
    click_on "Back"
  end

  test "updating a Day of week" do
    visit day_of_weeks_url
    click_on "Edit", match: :first

    fill_in "Name", with: @day_of_week.name
    click_on "Update Day of week"

    assert_text "Day of week was successfully updated"
    click_on "Back"
  end

  test "destroying a Day of week" do
    visit day_of_weeks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Day of week was successfully destroyed"
  end
end
