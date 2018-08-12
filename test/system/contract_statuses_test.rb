require "application_system_test_case"

class ContractStatusesTest < ApplicationSystemTestCase
  setup do
    @contract_status = contract_statuses(:one)
  end

  test "visiting the index" do
    visit contract_statuses_url
    assert_selector "h1", text: "Contract Statuses"
  end

  test "creating a Contract status" do
    visit contract_statuses_url
    click_on "New Contract Status"

    fill_in "Description", with: @contract_status.description
    fill_in "Name", with: @contract_status.name
    click_on "Create Contract status"

    assert_text "Contract status was successfully created"
    click_on "Back"
  end

  test "updating a Contract status" do
    visit contract_statuses_url
    click_on "Edit", match: :first

    fill_in "Description", with: @contract_status.description
    fill_in "Name", with: @contract_status.name
    click_on "Update Contract status"

    assert_text "Contract status was successfully updated"
    click_on "Back"
  end

  test "destroying a Contract status" do
    visit contract_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contract status was successfully destroyed"
  end
end
