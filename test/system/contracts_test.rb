require "application_system_test_case"

class ContractsTest < ApplicationSystemTestCase
  setup do
    @contract = contracts(:one)
  end

  test "visiting the index" do
    visit contracts_url
    assert_selector "h1", text: "Contracts"
  end

  test "creating a Contract" do
    visit contracts_url
    click_on "New Contract"

    fill_in "Community", with: @contract.community_id
    fill_in "Contract Status", with: @contract.contract_status_id
    fill_in "Contractor", with: @contract.contractor
    fill_in "Date", with: @contract.date
    fill_in "Expiration", with: @contract.expiration
    fill_in "Hired", with: @contract.hired
    fill_in "Notes", with: @contract.notes
    fill_in "Security Company", with: @contract.security_company_id
    fill_in "Title", with: @contract.title
    fill_in "Type", with: @contract.type
    click_on "Create Contract"

    assert_text "Contract was successfully created"
    click_on "Back"
  end

  test "updating a Contract" do
    visit contracts_url
    click_on "Edit", match: :first

    fill_in "Community", with: @contract.community_id
    fill_in "Contract Status", with: @contract.contract_status_id
    fill_in "Contractor", with: @contract.contractor
    fill_in "Date", with: @contract.date
    fill_in "Expiration", with: @contract.expiration
    fill_in "Hired", with: @contract.hired
    fill_in "Notes", with: @contract.notes
    fill_in "Security Company", with: @contract.security_company_id
    fill_in "Title", with: @contract.title
    fill_in "Type", with: @contract.type
    click_on "Update Contract"

    assert_text "Contract was successfully updated"
    click_on "Back"
  end

  test "destroying a Contract" do
    visit contracts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contract was successfully destroyed"
  end
end
