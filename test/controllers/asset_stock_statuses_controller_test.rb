require 'test_helper'

class AssetStockStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asset_stock_status = asset_stock_statuses(:one)
  end

  test "should get index" do
    get asset_stock_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_asset_stock_status_url
    assert_response :success
  end

  test "should create asset_stock_status" do
    assert_difference('AssetStockStatus.count') do
      post asset_stock_statuses_url, params: { asset_stock_status: { description: @asset_stock_status.description, name: @asset_stock_status.name } }
    end

    assert_redirected_to asset_stock_status_url(AssetStockStatus.last)
  end

  test "should show asset_stock_status" do
    get asset_stock_status_url(@asset_stock_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_asset_stock_status_url(@asset_stock_status)
    assert_response :success
  end

  test "should update asset_stock_status" do
    patch asset_stock_status_url(@asset_stock_status), params: { asset_stock_status: { description: @asset_stock_status.description, name: @asset_stock_status.name } }
    assert_redirected_to asset_stock_status_url(@asset_stock_status)
  end

  test "should destroy asset_stock_status" do
    assert_difference('AssetStockStatus.count', -1) do
      delete asset_stock_status_url(@asset_stock_status)
    end

    assert_redirected_to asset_stock_statuses_url
  end
end
