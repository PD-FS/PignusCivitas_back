require "application_system_test_case"

class VisitorsTest < ApplicationSystemTestCase
  setup do
    @visitor = visitors(:one)
  end

  test "visiting the index" do
    visit visitors_url
    assert_selector "h1", text: "Visitors"
  end

  test "creating a Visitor" do
    visit visitors_url
    click_on "New Visitor"

    fill_in "Checkin Date", with: @visitor.checkin_date
    fill_in "Checkout Date", with: @visitor.checkout_date
    fill_in "Community", with: @visitor.community_id
    fill_in "Destination", with: @visitor.destination
    fill_in "Notes", with: @visitor.notes
    fill_in "Person", with: @visitor.person_id
    fill_in "Vehicle", with: @visitor.vehicle_id
    click_on "Create Visitor"

    assert_text "Visitor was successfully created"
    click_on "Back"
  end

  test "updating a Visitor" do
    visit visitors_url
    click_on "Edit", match: :first

    fill_in "Checkin Date", with: @visitor.checkin_date
    fill_in "Checkout Date", with: @visitor.checkout_date
    fill_in "Community", with: @visitor.community_id
    fill_in "Destination", with: @visitor.destination
    fill_in "Notes", with: @visitor.notes
    fill_in "Person", with: @visitor.person_id
    fill_in "Vehicle", with: @visitor.vehicle_id
    click_on "Update Visitor"

    assert_text "Visitor was successfully updated"
    click_on "Back"
  end

  test "destroying a Visitor" do
    visit visitors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Visitor was successfully destroyed"
  end
end
