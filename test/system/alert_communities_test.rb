require "application_system_test_case"

class AlertCommunitiesTest < ApplicationSystemTestCase
  setup do
    @alert_community = alert_communities(:one)
  end

  test "visiting the index" do
    visit alert_communities_url
    assert_selector "h1", text: "Alert Communities"
  end

  test "creating a Alert community" do
    visit alert_communities_url
    click_on "New Alert Community"

    fill_in "Alert Community", with: @alert_community.alert_community_id
    fill_in "Alert", with: @alert_community.alert_id
    fill_in "Community", with: @alert_community.community_id
    click_on "Create Alert community"

    assert_text "Alert community was successfully created"
    click_on "Back"
  end

  test "updating a Alert community" do
    visit alert_communities_url
    click_on "Edit", match: :first

    fill_in "Alert Community", with: @alert_community.alert_community_id
    fill_in "Alert", with: @alert_community.alert_id
    fill_in "Community", with: @alert_community.community_id
    click_on "Update Alert community"

    assert_text "Alert community was successfully updated"
    click_on "Back"
  end

  test "destroying a Alert community" do
    visit alert_communities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alert community was successfully destroyed"
  end
end
