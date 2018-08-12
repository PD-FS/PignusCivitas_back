require 'test_helper'

class AlertStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alert_status = alert_statuses(:one)
  end

  test "should get index" do
    get alert_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_alert_status_url
    assert_response :success
  end

  test "should create alert_status" do
    assert_difference('AlertStatus.count') do
      post alert_statuses_url, params: { alert_status: { description: @alert_status.description, name: @alert_status.name } }
    end

    assert_redirected_to alert_status_url(AlertStatus.last)
  end

  test "should show alert_status" do
    get alert_status_url(@alert_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_alert_status_url(@alert_status)
    assert_response :success
  end

  test "should update alert_status" do
    patch alert_status_url(@alert_status), params: { alert_status: { description: @alert_status.description, name: @alert_status.name } }
    assert_redirected_to alert_status_url(@alert_status)
  end

  test "should destroy alert_status" do
    assert_difference('AlertStatus.count', -1) do
      delete alert_status_url(@alert_status)
    end

    assert_redirected_to alert_statuses_url
  end
end
