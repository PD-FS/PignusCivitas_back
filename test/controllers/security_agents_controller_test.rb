require 'test_helper'

class SecurityAgentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @security_agent = security_agents(:one)
  end

  test "should get index" do
    get security_agents_url
    assert_response :success
  end

  test "should get new" do
    get new_security_agent_url
    assert_response :success
  end

  test "should create security_agent" do
    assert_difference('SecurityAgent.count') do
      post security_agents_url, params: { security_agent: { admission_date: @security_agent.admission_date, agent_type_id: @security_agent.agent_type_id, division: @security_agent.division, person_id: @security_agent.person_id, schedule_id: @security_agent.schedule_id, security_agent_id: @security_agent.security_agent_id, security_agent_role_id: @security_agent.security_agent_role_id, security_company_id: @security_agent.security_company_id, weapon_id: @security_agent.weapon_id } }
    end

    assert_redirected_to security_agent_url(SecurityAgent.last)
  end

  test "should show security_agent" do
    get security_agent_url(@security_agent)
    assert_response :success
  end

  test "should get edit" do
    get edit_security_agent_url(@security_agent)
    assert_response :success
  end

  test "should update security_agent" do
    patch security_agent_url(@security_agent), params: { security_agent: { admission_date: @security_agent.admission_date, agent_type_id: @security_agent.agent_type_id, division: @security_agent.division, person_id: @security_agent.person_id, schedule_id: @security_agent.schedule_id, security_agent_id: @security_agent.security_agent_id, security_agent_role_id: @security_agent.security_agent_role_id, security_company_id: @security_agent.security_company_id, weapon_id: @security_agent.weapon_id } }
    assert_redirected_to security_agent_url(@security_agent)
  end

  test "should destroy security_agent" do
    assert_difference('SecurityAgent.count', -1) do
      delete security_agent_url(@security_agent)
    end

    assert_redirected_to security_agents_url
  end
end
