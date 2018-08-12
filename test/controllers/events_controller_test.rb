require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { community_id: @event.community_id, contact_name: @event.contact_name, contact_phone: @event.contact_phone, date: @event.date, end_date: @event.end_date, end_hour: @event.end_hour, event_status_id: @event.event_status_id, event_type_id: @event.event_type_id, facts: @event.facts, hour: @event.hour, location: @event.location, notes: @event.notes, reported_by: @event.reported_by, security_agent_id: @event.security_agent_id, site: @event.site, title: @event.title } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { community_id: @event.community_id, contact_name: @event.contact_name, contact_phone: @event.contact_phone, date: @event.date, end_date: @event.end_date, end_hour: @event.end_hour, event_status_id: @event.event_status_id, event_type_id: @event.event_type_id, facts: @event.facts, hour: @event.hour, location: @event.location, notes: @event.notes, reported_by: @event.reported_by, security_agent_id: @event.security_agent_id, site: @event.site, title: @event.title } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
