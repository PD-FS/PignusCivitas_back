require "application_system_test_case"

class EndowmentsTest < ApplicationSystemTestCase
  setup do
    @endowment = endowments(:one)
  end

  test "visiting the index" do
    visit endowments_url
    assert_selector "h1", text: "Endowments"
  end

  test "creating a Endowment" do
    visit endowments_url
    click_on "New Endowment"

    fill_in "Accountable", with: @endowment.accountable
    fill_in "Contract", with: @endowment.contract_id
    fill_in "Date", with: @endowment.date
    fill_in "Endowment Status", with: @endowment.endowment_status_id
    fill_in "Stock Name", with: @endowment.stock_name
    click_on "Create Endowment"

    assert_text "Endowment was successfully created"
    click_on "Back"
  end

  test "updating a Endowment" do
    visit endowments_url
    click_on "Edit", match: :first

    fill_in "Accountable", with: @endowment.accountable
    fill_in "Contract", with: @endowment.contract_id
    fill_in "Date", with: @endowment.date
    fill_in "Endowment Status", with: @endowment.endowment_status_id
    fill_in "Stock Name", with: @endowment.stock_name
    click_on "Update Endowment"

    assert_text "Endowment was successfully updated"
    click_on "Back"
  end

  test "destroying a Endowment" do
    visit endowments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Endowment was successfully destroyed"
  end
end
