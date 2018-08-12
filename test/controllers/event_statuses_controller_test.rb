require 'test_helper'

class EventStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_status = event_statuses(:one)
  end

  test "should get index" do
    get event_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_event_status_url
    assert_response :success
  end

  test "should create event_status" do
    assert_difference('EventStatus.count') do
      post event_statuses_url, params: { event_status: { description: @event_status.description, name: @event_status.name } }
    end

    assert_redirected_to event_status_url(EventStatus.last)
  end

  test "should show event_status" do
    get event_status_url(@event_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_status_url(@event_status)
    assert_response :success
  end

  test "should update event_status" do
    patch event_status_url(@event_status), params: { event_status: { description: @event_status.description, name: @event_status.name } }
    assert_redirected_to event_status_url(@event_status)
  end

  test "should destroy event_status" do
    assert_difference('EventStatus.count', -1) do
      delete event_status_url(@event_status)
    end

    assert_redirected_to event_statuses_url
  end
end
