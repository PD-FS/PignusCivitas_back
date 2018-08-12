require "application_system_test_case"

class SecurityAgentRolesTest < ApplicationSystemTestCase
  setup do
    @security_agent_role = security_agent_roles(:one)
  end

  test "visiting the index" do
    visit security_agent_roles_url
    assert_selector "h1", text: "Security Agent Roles"
  end

  test "creating a Security agent role" do
    visit security_agent_roles_url
    click_on "New Security Agent Role"

    fill_in "Description", with: @security_agent_role.description
    fill_in "Name", with: @security_agent_role.name
    click_on "Create Security agent role"

    assert_text "Security agent role was successfully created"
    click_on "Back"
  end

  test "updating a Security agent role" do
    visit security_agent_roles_url
    click_on "Edit", match: :first

    fill_in "Description", with: @security_agent_role.description
    fill_in "Name", with: @security_agent_role.name
    click_on "Update Security agent role"

    assert_text "Security agent role was successfully updated"
    click_on "Back"
  end

  test "destroying a Security agent role" do
    visit security_agent_roles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Security agent role was successfully destroyed"
  end
end
