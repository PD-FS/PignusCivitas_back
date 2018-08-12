require "application_system_test_case"

class EndowmentStatusesTest < ApplicationSystemTestCase
  setup do
    @endowment_status = endowment_statuses(:one)
  end

  test "visiting the index" do
    visit endowment_statuses_url
    assert_selector "h1", text: "Endowment Statuses"
  end

  test "creating a Endowment status" do
    visit endowment_statuses_url
    click_on "New Endowment Status"

    fill_in "Description", with: @endowment_status.description
    fill_in "Name", with: @endowment_status.name
    click_on "Create Endowment status"

    assert_text "Endowment status was successfully created"
    click_on "Back"
  end

  test "updating a Endowment status" do
    visit endowment_statuses_url
    click_on "Edit", match: :first

    fill_in "Description", with: @endowment_status.description
    fill_in "Name", with: @endowment_status.name
    click_on "Update Endowment status"

    assert_text "Endowment status was successfully updated"
    click_on "Back"
  end

  test "destroying a Endowment status" do
    visit endowment_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Endowment status was successfully destroyed"
  end
end
