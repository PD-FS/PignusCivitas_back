require 'test_helper'

class AssetStocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asset_stock = asset_stocks(:one)
  end

  test "should get index" do
    get asset_stocks_url
    assert_response :success
  end

  test "should get new" do
    get new_asset_stock_url
    assert_response :success
  end

  test "should create asset_stock" do
    assert_difference('AssetStock.count') do
      post asset_stocks_url, params: { asset_stock: { asset_id: @asset_stock.asset_id, asset_stock_status_id: @asset_stock.asset_stock_status_id, community_id: @asset_stock.community_id, last_update: @asset_stock.last_update, manager: @asset_stock.manager, stock_name: @asset_stock.stock_name } }
    end

    assert_redirected_to asset_stock_url(AssetStock.last)
  end

  test "should show asset_stock" do
    get asset_stock_url(@asset_stock)
    assert_response :success
  end

  test "should get edit" do
    get edit_asset_stock_url(@asset_stock)
    assert_response :success
  end

  test "should update asset_stock" do
    patch asset_stock_url(@asset_stock), params: { asset_stock: { asset_id: @asset_stock.asset_id, asset_stock_status_id: @asset_stock.asset_stock_status_id, community_id: @asset_stock.community_id, last_update: @asset_stock.last_update, manager: @asset_stock.manager, stock_name: @asset_stock.stock_name } }
    assert_redirected_to asset_stock_url(@asset_stock)
  end

  test "should destroy asset_stock" do
    assert_difference('AssetStock.count', -1) do
      delete asset_stock_url(@asset_stock)
    end

    assert_redirected_to asset_stocks_url
  end
end
