require "application_system_test_case"

class EventStatusesTest < ApplicationSystemTestCase
  setup do
    @event_status = event_statuses(:one)
  end

  test "visiting the index" do
    visit event_statuses_url
    assert_selector "h1", text: "Event Statuses"
  end

  test "creating a Event status" do
    visit event_statuses_url
    click_on "New Event Status"

    fill_in "Description", with: @event_status.description
    fill_in "Name", with: @event_status.name
    click_on "Create Event status"

    assert_text "Event status was successfully created"
    click_on "Back"
  end

  test "updating a Event status" do
    visit event_statuses_url
    click_on "Edit", match: :first

    fill_in "Description", with: @event_status.description
    fill_in "Name", with: @event_status.name
    click_on "Update Event status"

    assert_text "Event status was successfully updated"
    click_on "Back"
  end

  test "destroying a Event status" do
    visit event_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event status was successfully destroyed"
  end
end
