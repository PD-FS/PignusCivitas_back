require "application_system_test_case"

class AgentSchedulesTest < ApplicationSystemTestCase
  setup do
    @agent_schedule = agent_schedules(:one)
  end

  test "visiting the index" do
    visit agent_schedules_url
    assert_selector "h1", text: "Agent Schedules"
  end

  test "creating a Agent schedule" do
    visit agent_schedules_url
    click_on "New Agent Schedule"

    fill_in "Contract", with: @agent_schedule.contract_id
    fill_in "Schedule", with: @agent_schedule.schedule_id
    fill_in "Security Agent", with: @agent_schedule.security_agent_id
    click_on "Create Agent schedule"

    assert_text "Agent schedule was successfully created"
    click_on "Back"
  end

  test "updating a Agent schedule" do
    visit agent_schedules_url
    click_on "Edit", match: :first

    fill_in "Contract", with: @agent_schedule.contract_id
    fill_in "Schedule", with: @agent_schedule.schedule_id
    fill_in "Security Agent", with: @agent_schedule.security_agent_id
    click_on "Update Agent schedule"

    assert_text "Agent schedule was successfully updated"
    click_on "Back"
  end

  test "destroying a Agent schedule" do
    visit agent_schedules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agent schedule was successfully destroyed"
  end
end
