require 'test_helper'

class VisitorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visitor = visitors(:one)
  end

  test "should get index" do
    get visitors_url
    assert_response :success
  end

  test "should get new" do
    get new_visitor_url
    assert_response :success
  end

  test "should create visitor" do
    assert_difference('Visitor.count') do
      post visitors_url, params: { visitor: { checkin_date: @visitor.checkin_date, checkout_date: @visitor.checkout_date, community_id: @visitor.community_id, destination: @visitor.destination, notes: @visitor.notes, person_id: @visitor.person_id, vehicle_id: @visitor.vehicle_id } }
    end

    assert_redirected_to visitor_url(Visitor.last)
  end

  test "should show visitor" do
    get visitor_url(@visitor)
    assert_response :success
  end

  test "should get edit" do
    get edit_visitor_url(@visitor)
    assert_response :success
  end

  test "should update visitor" do
    patch visitor_url(@visitor), params: { visitor: { checkin_date: @visitor.checkin_date, checkout_date: @visitor.checkout_date, community_id: @visitor.community_id, destination: @visitor.destination, notes: @visitor.notes, person_id: @visitor.person_id, vehicle_id: @visitor.vehicle_id } }
    assert_redirected_to visitor_url(@visitor)
  end

  test "should destroy visitor" do
    assert_difference('Visitor.count', -1) do
      delete visitor_url(@visitor)
    end

    assert_redirected_to visitors_url
  end
end
