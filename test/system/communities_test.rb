require "application_system_test_case"

class CommunitiesTest < ApplicationSystemTestCase
  setup do
    @community = communities(:one)
  end

  test "visiting the index" do
    visit communities_url
    assert_selector "h1", text: "Communities"
  end

  test "creating a Community" do
    visit communities_url
    click_on "New Community"

    fill_in "Address", with: @community.address
    fill_in "Admin Address", with: @community.admin_address
    fill_in "Attendant", with: @community.attendant
    fill_in "Community", with: @community.community_id
    fill_in "Community Type", with: @community.community_type_id
    fill_in "Email", with: @community.email
    fill_in "Name", with: @community.name
    fill_in "Notes", with: @community.notes
    fill_in "Phone", with: @community.phone
    fill_in "Postal Code", with: @community.postal_code
    fill_in "Website", with: @community.webSite
    click_on "Create Community"

    assert_text "Community was successfully created"
    click_on "Back"
  end

  test "updating a Community" do
    visit communities_url
    click_on "Edit", match: :first

    fill_in "Address", with: @community.address
    fill_in "Admin Address", with: @community.admin_address
    fill_in "Attendant", with: @community.attendant
    fill_in "Community", with: @community.community_id
    fill_in "Community Type", with: @community.community_type_id
    fill_in "Email", with: @community.email
    fill_in "Name", with: @community.name
    fill_in "Notes", with: @community.notes
    fill_in "Phone", with: @community.phone
    fill_in "Postal Code", with: @community.postal_code
    fill_in "Website", with: @community.webSite
    click_on "Update Community"

    assert_text "Community was successfully updated"
    click_on "Back"
  end

  test "destroying a Community" do
    visit communities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Community was successfully destroyed"
  end
end
