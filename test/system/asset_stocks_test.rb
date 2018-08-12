require "application_system_test_case"

class AssetStocksTest < ApplicationSystemTestCase
  setup do
    @asset_stock = asset_stocks(:one)
  end

  test "visiting the index" do
    visit asset_stocks_url
    assert_selector "h1", text: "Asset Stocks"
  end

  test "creating a Asset stock" do
    visit asset_stocks_url
    click_on "New Asset Stock"

    fill_in "Asset", with: @asset_stock.asset_id
    fill_in "Asset Stock Status", with: @asset_stock.asset_stock_status_id
    fill_in "Community", with: @asset_stock.community_id
    fill_in "Last Update", with: @asset_stock.last_update
    fill_in "Manager", with: @asset_stock.manager
    fill_in "Stock Name", with: @asset_stock.stock_name
    click_on "Create Asset stock"

    assert_text "Asset stock was successfully created"
    click_on "Back"
  end

  test "updating a Asset stock" do
    visit asset_stocks_url
    click_on "Edit", match: :first

    fill_in "Asset", with: @asset_stock.asset_id
    fill_in "Asset Stock Status", with: @asset_stock.asset_stock_status_id
    fill_in "Community", with: @asset_stock.community_id
    fill_in "Last Update", with: @asset_stock.last_update
    fill_in "Manager", with: @asset_stock.manager
    fill_in "Stock Name", with: @asset_stock.stock_name
    click_on "Update Asset stock"

    assert_text "Asset stock was successfully updated"
    click_on "Back"
  end

  test "destroying a Asset stock" do
    visit asset_stocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asset stock was successfully destroyed"
  end
end
