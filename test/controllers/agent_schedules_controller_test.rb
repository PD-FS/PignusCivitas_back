require 'test_helper'

class AgentSchedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agent_schedule = agent_schedules(:one)
  end

  test "should get index" do
    get agent_schedules_url
    assert_response :success
  end

  test "should get new" do
    get new_agent_schedule_url
    assert_response :success
  end

  test "should create agent_schedule" do
    assert_difference('AgentSchedule.count') do
      post agent_schedules_url, params: { agent_schedule: { contract_id: @agent_schedule.contract_id, schedule_id: @agent_schedule.schedule_id, security_agent_id: @agent_schedule.security_agent_id } }
    end

    assert_redirected_to agent_schedule_url(AgentSchedule.last)
  end

  test "should show agent_schedule" do
    get agent_schedule_url(@agent_schedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_agent_schedule_url(@agent_schedule)
    assert_response :success
  end

  test "should update agent_schedule" do
    patch agent_schedule_url(@agent_schedule), params: { agent_schedule: { contract_id: @agent_schedule.contract_id, schedule_id: @agent_schedule.schedule_id, security_agent_id: @agent_schedule.security_agent_id } }
    assert_redirected_to agent_schedule_url(@agent_schedule)
  end

  test "should destroy agent_schedule" do
    assert_difference('AgentSchedule.count', -1) do
      delete agent_schedule_url(@agent_schedule)
    end

    assert_redirected_to agent_schedules_url
  end
end
