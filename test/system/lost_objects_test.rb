require "application_system_test_case"

class LostObjectsTest < ApplicationSystemTestCase
  setup do
    @lost_object = lost_objects(:one)
  end

  test "visiting the index" do
    visit lost_objects_url
    assert_selector "h1", text: "Lost Objects"
  end

  test "creating a Lost object" do
    visit lost_objects_url
    click_on "New Lost Object"

    fill_in "Community", with: @lost_object.community_id
    fill_in "Date", with: @lost_object.date
    fill_in "Name", with: @lost_object.name
    fill_in "Notes", with: @lost_object.notes
    fill_in "Phone", with: @lost_object.phone
    fill_in "Return Date", with: @lost_object.return_date
    fill_in "Returned To", with: @lost_object.returned_to
    click_on "Create Lost object"

    assert_text "Lost object was successfully created"
    click_on "Back"
  end

  test "updating a Lost object" do
    visit lost_objects_url
    click_on "Edit", match: :first

    fill_in "Community", with: @lost_object.community_id
    fill_in "Date", with: @lost_object.date
    fill_in "Name", with: @lost_object.name
    fill_in "Notes", with: @lost_object.notes
    fill_in "Phone", with: @lost_object.phone
    fill_in "Return Date", with: @lost_object.return_date
    fill_in "Returned To", with: @lost_object.returned_to
    click_on "Update Lost object"

    assert_text "Lost object was successfully updated"
    click_on "Back"
  end

  test "destroying a Lost object" do
    visit lost_objects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lost object was successfully destroyed"
  end
end
