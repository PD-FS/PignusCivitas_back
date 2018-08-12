require "application_system_test_case"

class BlackListStatusesTest < ApplicationSystemTestCase
  setup do
    @black_list_status = black_list_statuses(:one)
  end

  test "visiting the index" do
    visit black_list_statuses_url
    assert_selector "h1", text: "Black List Statuses"
  end

  test "creating a Black list status" do
    visit black_list_statuses_url
    click_on "New Black List Status"

    fill_in "Description", with: @black_list_status.description
    fill_in "Name", with: @black_list_status.name
    click_on "Create Black list status"

    assert_text "Black list status was successfully created"
    click_on "Back"
  end

  test "updating a Black list status" do
    visit black_list_statuses_url
    click_on "Edit", match: :first

    fill_in "Description", with: @black_list_status.description
    fill_in "Name", with: @black_list_status.name
    click_on "Update Black list status"

    assert_text "Black list status was successfully updated"
    click_on "Back"
  end

  test "destroying a Black list status" do
    visit black_list_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Black list status was successfully destroyed"
  end
end
