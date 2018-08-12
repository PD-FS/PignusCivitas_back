require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "creating a Item" do
    visit items_url
    click_on "New Item"

    fill_in "Accountable", with: @item.accountable
    fill_in "Amount", with: @item.amount
    fill_in "Characteristics", with: @item.characteristics
    fill_in "Endowment", with: @item.endowment_id
    fill_in "Item Status", with: @item.item_status_id
    fill_in "Item Type", with: @item.item_type_id
    fill_in "Name", with: @item.name
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "updating a Item" do
    visit items_url
    click_on "Edit", match: :first

    fill_in "Accountable", with: @item.accountable
    fill_in "Amount", with: @item.amount
    fill_in "Characteristics", with: @item.characteristics
    fill_in "Endowment", with: @item.endowment_id
    fill_in "Item Status", with: @item.item_status_id
    fill_in "Item Type", with: @item.item_type_id
    fill_in "Name", with: @item.name
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "destroying a Item" do
    visit items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item was successfully destroyed"
  end
end
