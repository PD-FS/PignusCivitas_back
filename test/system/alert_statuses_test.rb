require "application_system_test_case"

class AlertStatusesTest < ApplicationSystemTestCase
  setup do
    @alert_status = alert_statuses(:one)
  end

  test "visiting the index" do
    visit alert_statuses_url
    assert_selector "h1", text: "Alert Statuses"
  end

  test "creating a Alert status" do
    visit alert_statuses_url
    click_on "New Alert Status"

    fill_in "Description", with: @alert_status.description
    fill_in "Name", with: @alert_status.name
    click_on "Create Alert status"

    assert_text "Alert status was successfully created"
    click_on "Back"
  end

  test "updating a Alert status" do
    visit alert_statuses_url
    click_on "Edit", match: :first

    fill_in "Description", with: @alert_status.description
    fill_in "Name", with: @alert_status.name
    click_on "Update Alert status"

    assert_text "Alert status was successfully updated"
    click_on "Back"
  end

  test "destroying a Alert status" do
    visit alert_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alert status was successfully destroyed"
  end
end
