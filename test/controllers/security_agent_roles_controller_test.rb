require 'test_helper'

class SecurityAgentRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @security_agent_role = security_agent_roles(:one)
  end

  test "should get index" do
    get security_agent_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_security_agent_role_url
    assert_response :success
  end

  test "should create security_agent_role" do
    assert_difference('SecurityAgentRole.count') do
      post security_agent_roles_url, params: { security_agent_role: { description: @security_agent_role.description, name: @security_agent_role.name } }
    end

    assert_redirected_to security_agent_role_url(SecurityAgentRole.last)
  end

  test "should show security_agent_role" do
    get security_agent_role_url(@security_agent_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_security_agent_role_url(@security_agent_role)
    assert_response :success
  end

  test "should update security_agent_role" do
    patch security_agent_role_url(@security_agent_role), params: { security_agent_role: { description: @security_agent_role.description, name: @security_agent_role.name } }
    assert_redirected_to security_agent_role_url(@security_agent_role)
  end

  test "should destroy security_agent_role" do
    assert_difference('SecurityAgentRole.count', -1) do
      delete security_agent_role_url(@security_agent_role)
    end

    assert_redirected_to security_agent_roles_url
  end
end
