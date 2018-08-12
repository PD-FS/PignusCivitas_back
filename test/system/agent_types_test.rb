require "application_system_test_case"

class AgentTypesTest < ApplicationSystemTestCase
  setup do
    @agent_type = agent_types(:one)
  end

  test "visiting the index" do
    visit agent_types_url
    assert_selector "h1", text: "Agent Types"
  end

  test "creating a Agent type" do
    visit agent_types_url
    click_on "New Agent Type"

    fill_in "Name", with: @agent_type.name
    fill_in "Type", with: @agent_type.type
    click_on "Create Agent type"

    assert_text "Agent type was successfully created"
    click_on "Back"
  end

  test "updating a Agent type" do
    visit agent_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @agent_type.name
    fill_in "Type", with: @agent_type.type
    click_on "Update Agent type"

    assert_text "Agent type was successfully updated"
    click_on "Back"
  end

  test "destroying a Agent type" do
    visit agent_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agent type was successfully destroyed"
  end
end
