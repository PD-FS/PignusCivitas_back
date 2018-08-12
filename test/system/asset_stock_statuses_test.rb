require "application_system_test_case"

class AssetStockStatusesTest < ApplicationSystemTestCase
  setup do
    @asset_stock_status = asset_stock_statuses(:one)
  end

  test "visiting the index" do
    visit asset_stock_statuses_url
    assert_selector "h1", text: "Asset Stock Statuses"
  end

  test "creating a Asset stock status" do
    visit asset_stock_statuses_url
    click_on "New Asset Stock Status"

    fill_in "Description", with: @asset_stock_status.description
    fill_in "Name", with: @asset_stock_status.name
    click_on "Create Asset stock status"

    assert_text "Asset stock status was successfully created"
    click_on "Back"
  end

  test "updating a Asset stock status" do
    visit asset_stock_statuses_url
    click_on "Edit", match: :first

    fill_in "Description", with: @asset_stock_status.description
    fill_in "Name", with: @asset_stock_status.name
    click_on "Update Asset stock status"

    assert_text "Asset stock status was successfully updated"
    click_on "Back"
  end

  test "destroying a Asset stock status" do
    visit asset_stock_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asset stock status was successfully destroyed"
  end
end
