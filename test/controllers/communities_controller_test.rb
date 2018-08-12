require 'test_helper'

class CommunitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @community = communities(:one)
  end

  test "should get index" do
    get communities_url
    assert_response :success
  end

  test "should get new" do
    get new_community_url
    assert_response :success
  end

  test "should create community" do
    assert_difference('Community.count') do
      post communities_url, params: { community: { address: @community.address, admin_address: @community.admin_address, attendant: @community.attendant, community_id: @community.community_id, community_type_id: @community.community_type_id, email: @community.email, name: @community.name, notes: @community.notes, phone: @community.phone, postal_code: @community.postal_code, webSite: @community.webSite } }
    end

    assert_redirected_to community_url(Community.last)
  end

  test "should show community" do
    get community_url(@community)
    assert_response :success
  end

  test "should get edit" do
    get edit_community_url(@community)
    assert_response :success
  end

  test "should update community" do
    patch community_url(@community), params: { community: { address: @community.address, admin_address: @community.admin_address, attendant: @community.attendant, community_id: @community.community_id, community_type_id: @community.community_type_id, email: @community.email, name: @community.name, notes: @community.notes, phone: @community.phone, postal_code: @community.postal_code, webSite: @community.webSite } }
    assert_redirected_to community_url(@community)
  end

  test "should destroy community" do
    assert_difference('Community.count', -1) do
      delete community_url(@community)
    end

    assert_redirected_to communities_url
  end
end
