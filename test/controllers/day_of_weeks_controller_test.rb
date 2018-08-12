require 'test_helper'

class DayOfWeeksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @day_of_week = day_of_weeks(:one)
  end

  test "should get index" do
    get day_of_weeks_url
    assert_response :success
  end

  test "should get new" do
    get new_day_of_week_url
    assert_response :success
  end

  test "should create day_of_week" do
    assert_difference('DayOfWeek.count') do
      post day_of_weeks_url, params: { day_of_week: { name: @day_of_week.name } }
    end

    assert_redirected_to day_of_week_url(DayOfWeek.last)
  end

  test "should show day_of_week" do
    get day_of_week_url(@day_of_week)
    assert_response :success
  end

  test "should get edit" do
    get edit_day_of_week_url(@day_of_week)
    assert_response :success
  end

  test "should update day_of_week" do
    patch day_of_week_url(@day_of_week), params: { day_of_week: { name: @day_of_week.name } }
    assert_redirected_to day_of_week_url(@day_of_week)
  end

  test "should destroy day_of_week" do
    assert_difference('DayOfWeek.count', -1) do
      delete day_of_week_url(@day_of_week)
    end

    assert_redirected_to day_of_weeks_url
  end
end
