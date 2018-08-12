require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "creating a Event" do
    visit events_url
    click_on "New Event"

    fill_in "Community", with: @event.community_id
    fill_in "Contact Name", with: @event.contact_name
    fill_in "Contact Phone", with: @event.contact_phone
    fill_in "Date", with: @event.date
    fill_in "End Date", with: @event.end_date
    fill_in "End Hour", with: @event.end_hour
    fill_in "Event Status", with: @event.event_status_id
    fill_in "Event Type", with: @event.event_type_id
    fill_in "Facts", with: @event.facts
    fill_in "Hour", with: @event.hour
    fill_in "Location", with: @event.location
    fill_in "Notes", with: @event.notes
    fill_in "Reported By", with: @event.reported_by
    fill_in "Security Agent", with: @event.security_agent_id
    fill_in "Site", with: @event.site
    fill_in "Title", with: @event.title
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "updating a Event" do
    visit events_url
    click_on "Edit", match: :first

    fill_in "Community", with: @event.community_id
    fill_in "Contact Name", with: @event.contact_name
    fill_in "Contact Phone", with: @event.contact_phone
    fill_in "Date", with: @event.date
    fill_in "End Date", with: @event.end_date
    fill_in "End Hour", with: @event.end_hour
    fill_in "Event Status", with: @event.event_status_id
    fill_in "Event Type", with: @event.event_type_id
    fill_in "Facts", with: @event.facts
    fill_in "Hour", with: @event.hour
    fill_in "Location", with: @event.location
    fill_in "Notes", with: @event.notes
    fill_in "Reported By", with: @event.reported_by
    fill_in "Security Agent", with: @event.security_agent_id
    fill_in "Site", with: @event.site
    fill_in "Title", with: @event.title
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "destroying a Event" do
    visit events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event was successfully destroyed"
  end
end
