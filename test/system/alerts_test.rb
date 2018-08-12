require "application_system_test_case"

class AlertsTest < ApplicationSystemTestCase
  setup do
    @alert = alerts(:one)
  end

  test "visiting the index" do
    visit alerts_url
    assert_selector "h1", text: "Alerts"
  end

  test "creating a Alert" do
    visit alerts_url
    click_on "New Alert"

    fill_in "Alert Status", with: @alert.alert_status_id
    fill_in "Community", with: @alert.community_id
    fill_in "Content", with: @alert.content
    fill_in "Coordinates", with: @alert.coordinates
    fill_in "Creation Date", with: @alert.creation_date
    fill_in "Evidence", with: @alert.evidence
    fill_in "Title", with: @alert.title
    fill_in "User", with: @alert.user_id
    click_on "Create Alert"

    assert_text "Alert was successfully created"
    click_on "Back"
  end

  test "updating a Alert" do
    visit alerts_url
    click_on "Edit", match: :first

    fill_in "Alert Status", with: @alert.alert_status_id
    fill_in "Community", with: @alert.community_id
    fill_in "Content", with: @alert.content
    fill_in "Coordinates", with: @alert.coordinates
    fill_in "Creation Date", with: @alert.creation_date
    fill_in "Evidence", with: @alert.evidence
    fill_in "Title", with: @alert.title
    fill_in "User", with: @alert.user_id
    click_on "Update Alert"

    assert_text "Alert was successfully updated"
    click_on "Back"
  end

  test "destroying a Alert" do
    visit alerts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alert was successfully destroyed"
  end
end
