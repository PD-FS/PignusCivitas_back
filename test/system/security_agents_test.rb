require "application_system_test_case"

class SecurityAgentsTest < ApplicationSystemTestCase
  setup do
    @security_agent = security_agents(:one)
  end

  test "visiting the index" do
    visit security_agents_url
    assert_selector "h1", text: "Security Agents"
  end

  test "creating a Security agent" do
    visit security_agents_url
    click_on "New Security Agent"

    fill_in "Admission Date", with: @security_agent.admission_date
    fill_in "Agent Type", with: @security_agent.agent_type_id
    fill_in "Division", with: @security_agent.division
    fill_in "Person", with: @security_agent.person_id
    fill_in "Schedule", with: @security_agent.schedule_id
    fill_in "Security Agent", with: @security_agent.security_agent_id
    fill_in "Security Agent Role", with: @security_agent.security_agent_role_id
    fill_in "Security Company", with: @security_agent.security_company_id
    fill_in "Weapon", with: @security_agent.weapon_id
    click_on "Create Security agent"

    assert_text "Security agent was successfully created"
    click_on "Back"
  end

  test "updating a Security agent" do
    visit security_agents_url
    click_on "Edit", match: :first

    fill_in "Admission Date", with: @security_agent.admission_date
    fill_in "Agent Type", with: @security_agent.agent_type_id
    fill_in "Division", with: @security_agent.division
    fill_in "Person", with: @security_agent.person_id
    fill_in "Schedule", with: @security_agent.schedule_id
    fill_in "Security Agent", with: @security_agent.security_agent_id
    fill_in "Security Agent Role", with: @security_agent.security_agent_role_id
    fill_in "Security Company", with: @security_agent.security_company_id
    fill_in "Weapon", with: @security_agent.weapon_id
    click_on "Update Security agent"

    assert_text "Security agent was successfully updated"
    click_on "Back"
  end

  test "destroying a Security agent" do
    visit security_agents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Security agent was successfully destroyed"
  end
end
