require 'test_helper'

class AssetStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asset_status = asset_statuses(:one)
  end

  test "should get index" do
    get asset_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_asset_status_url
    assert_response :success
  end

  test "should create asset_status" do
    assert_difference('AssetStatus.count') do
      post asset_statuses_url, params: { asset_status: { description: @asset_status.description, name: @asset_status.name } }
    end

    assert_redirected_to asset_status_url(AssetStatus.last)
  end

  test "should show asset_status" do
    get asset_status_url(@asset_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_asset_status_url(@asset_status)
    assert_response :success
  end

  test "should update asset_status" do
    patch asset_status_url(@asset_status), params: { asset_status: { description: @asset_status.description, name: @asset_status.name } }
    assert_redirected_to asset_status_url(@asset_status)
  end

  test "should destroy asset_status" do
    assert_difference('AssetStatus.count', -1) do
      delete asset_status_url(@asset_status)
    end

    assert_redirected_to asset_statuses_url
  end
end
