require 'test_helper'

class AlertCommunitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alert_community = alert_communities(:one)
  end

  test "should get index" do
    get alert_communities_url
    assert_response :success
  end

  test "should get new" do
    get new_alert_community_url
    assert_response :success
  end

  test "should create alert_community" do
    assert_difference('AlertCommunity.count') do
      post alert_communities_url, params: { alert_community: { alert_community_id: @alert_community.alert_community_id, alert_id: @alert_community.alert_id, community_id: @alert_community.community_id } }
    end

    assert_redirected_to alert_community_url(AlertCommunity.last)
  end

  test "should show alert_community" do
    get alert_community_url(@alert_community)
    assert_response :success
  end

  test "should get edit" do
    get edit_alert_community_url(@alert_community)
    assert_response :success
  end

  test "should update alert_community" do
    patch alert_community_url(@alert_community), params: { alert_community: { alert_community_id: @alert_community.alert_community_id, alert_id: @alert_community.alert_id, community_id: @alert_community.community_id } }
    assert_redirected_to alert_community_url(@alert_community)
  end

  test "should destroy alert_community" do
    assert_difference('AlertCommunity.count', -1) do
      delete alert_community_url(@alert_community)
    end

    assert_redirected_to alert_communities_url
  end
end
