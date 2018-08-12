require "application_system_test_case"

class AssetsTest < ApplicationSystemTestCase
  setup do
    @asset = assets(:one)
  end

  test "visiting the index" do
    visit assets_url
    assert_selector "h1", text: "Assets"
  end

  test "creating a Asset" do
    visit assets_url
    click_on "New Asset"

    fill_in "Asset Status", with: @asset.asset_status_id
    fill_in "Entry Date", with: @asset.entry_date
    fill_in "Location", with: @asset.location
    fill_in "Name", with: @asset.name
    fill_in "Notes", with: @asset.notes
    fill_in "Quantity", with: @asset.quantity
    fill_in "Who", with: @asset.who
    click_on "Create Asset"

    assert_text "Asset was successfully created"
    click_on "Back"
  end

  test "updating a Asset" do
    visit assets_url
    click_on "Edit", match: :first

    fill_in "Asset Status", with: @asset.asset_status_id
    fill_in "Entry Date", with: @asset.entry_date
    fill_in "Location", with: @asset.location
    fill_in "Name", with: @asset.name
    fill_in "Notes", with: @asset.notes
    fill_in "Quantity", with: @asset.quantity
    fill_in "Who", with: @asset.who
    click_on "Update Asset"

    assert_text "Asset was successfully updated"
    click_on "Back"
  end

  test "destroying a Asset" do
    visit assets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asset was successfully destroyed"
  end
end
