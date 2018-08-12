require "application_system_test_case"

class BlackListsTest < ApplicationSystemTestCase
  setup do
    @black_list = black_lists(:one)
  end

  test "visiting the index" do
    visit black_lists_url
    assert_selector "h1", text: "Black Lists"
  end

  test "creating a Black list" do
    visit black_lists_url
    click_on "New Black List"

    fill_in "Black List Status", with: @black_list.black_list_status_id
    fill_in "Date", with: @black_list.date
    fill_in "Facts", with: @black_list.facts
    fill_in "Notes", with: @black_list.notes
    fill_in "Person", with: @black_list.person_id
    click_on "Create Black list"

    assert_text "Black list was successfully created"
    click_on "Back"
  end

  test "updating a Black list" do
    visit black_lists_url
    click_on "Edit", match: :first

    fill_in "Black List Status", with: @black_list.black_list_status_id
    fill_in "Date", with: @black_list.date
    fill_in "Facts", with: @black_list.facts
    fill_in "Notes", with: @black_list.notes
    fill_in "Person", with: @black_list.person_id
    click_on "Update Black list"

    assert_text "Black list was successfully updated"
    click_on "Back"
  end

  test "destroying a Black list" do
    visit black_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Black list was successfully destroyed"
  end
end
