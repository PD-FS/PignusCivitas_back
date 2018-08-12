require "application_system_test_case"

class CommunityStaffsTest < ApplicationSystemTestCase
  setup do
    @community_staff = community_staffs(:one)
  end

  test "visiting the index" do
    visit community_staffs_url
    assert_selector "h1", text: "Community Staffs"
  end

  test "creating a Community staff" do
    visit community_staffs_url
    click_on "New Community Staff"

    fill_in "Community", with: @community_staff.community_id
    fill_in "Staff", with: @community_staff.staff_id
    click_on "Create Community staff"

    assert_text "Community staff was successfully created"
    click_on "Back"
  end

  test "updating a Community staff" do
    visit community_staffs_url
    click_on "Edit", match: :first

    fill_in "Community", with: @community_staff.community_id
    fill_in "Staff", with: @community_staff.staff_id
    click_on "Update Community staff"

    assert_text "Community staff was successfully updated"
    click_on "Back"
  end

  test "destroying a Community staff" do
    visit community_staffs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Community staff was successfully destroyed"
  end
end
