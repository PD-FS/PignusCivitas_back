require "application_system_test_case"

class AssetStatusesTest < ApplicationSystemTestCase
  setup do
    @asset_status = asset_statuses(:one)
  end

  test "visiting the index" do
    visit asset_statuses_url
    assert_selector "h1", text: "Asset Statuses"
  end

  test "creating a Asset status" do
    visit asset_statuses_url
    click_on "New Asset Status"

    fill_in "Description", with: @asset_status.description
    fill_in "Name", with: @asset_status.name
    click_on "Create Asset status"

    assert_text "Asset status was successfully created"
    click_on "Back"
  end

  test "updating a Asset status" do
    visit asset_statuses_url
    click_on "Edit", match: :first

    fill_in "Description", with: @asset_status.description
    fill_in "Name", with: @asset_status.name
    click_on "Update Asset status"

    assert_text "Asset status was successfully updated"
    click_on "Back"
  end

  test "destroying a Asset status" do
    visit asset_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asset status was successfully destroyed"
  end
end
