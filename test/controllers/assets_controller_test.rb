require 'test_helper'

class AssetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asset = assets(:one)
  end

  test "should get index" do
    get assets_url
    assert_response :success
  end

  test "should get new" do
    get new_asset_url
    assert_response :success
  end

  test "should create asset" do
    assert_difference('Asset.count') do
      post assets_url, params: { asset: { asset_status_id: @asset.asset_status_id, entry_date: @asset.entry_date, location: @asset.location, name: @asset.name, notes: @asset.notes, quantity: @asset.quantity, who: @asset.who } }
    end

    assert_redirected_to asset_url(Asset.last)
  end

  test "should show asset" do
    get asset_url(@asset)
    assert_response :success
  end

  test "should get edit" do
    get edit_asset_url(@asset)
    assert_response :success
  end

  test "should update asset" do
    patch asset_url(@asset), params: { asset: { asset_status_id: @asset.asset_status_id, entry_date: @asset.entry_date, location: @asset.location, name: @asset.name, notes: @asset.notes, quantity: @asset.quantity, who: @asset.who } }
    assert_redirected_to asset_url(@asset)
  end

  test "should destroy asset" do
    assert_difference('Asset.count', -1) do
      delete asset_url(@asset)
    end

    assert_redirected_to assets_url
  end
end
