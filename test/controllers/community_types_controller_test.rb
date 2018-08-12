require 'test_helper'

class CommunityTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @community_type = community_types(:one)
  end

  test "should get index" do
    get community_types_url
    assert_response :success
  end

  test "should get new" do
    get new_community_type_url
    assert_response :success
  end

  test "should create community_type" do
    assert_difference('CommunityType.count') do
      post community_types_url, params: { community_type: { description: @community_type.description, name: @community_type.name } }
    end

    assert_redirected_to community_type_url(CommunityType.last)
  end

  test "should show community_type" do
    get community_type_url(@community_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_community_type_url(@community_type)
    assert_response :success
  end

  test "should update community_type" do
    patch community_type_url(@community_type), params: { community_type: { description: @community_type.description, name: @community_type.name } }
    assert_redirected_to community_type_url(@community_type)
  end

  test "should destroy community_type" do
    assert_difference('CommunityType.count', -1) do
      delete community_type_url(@community_type)
    end

    assert_redirected_to community_types_url
  end
end
