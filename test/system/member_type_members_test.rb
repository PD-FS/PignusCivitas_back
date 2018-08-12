require "application_system_test_case"

class MemberTypeMembersTest < ApplicationSystemTestCase
  setup do
    @member_type_member = member_type_members(:one)
  end

  test "visiting the index" do
    visit member_type_members_url
    assert_selector "h1", text: "Member Type Members"
  end

  test "creating a Member type member" do
    visit member_type_members_url
    click_on "New Member Type Member"

    fill_in "Member", with: @member_type_member.member_id
    fill_in "Member Type", with: @member_type_member.member_type_id
    click_on "Create Member type member"

    assert_text "Member type member was successfully created"
    click_on "Back"
  end

  test "updating a Member type member" do
    visit member_type_members_url
    click_on "Edit", match: :first

    fill_in "Member", with: @member_type_member.member_id
    fill_in "Member Type", with: @member_type_member.member_type_id
    click_on "Update Member type member"

    assert_text "Member type member was successfully updated"
    click_on "Back"
  end

  test "destroying a Member type member" do
    visit member_type_members_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Member type member was successfully destroyed"
  end
end
