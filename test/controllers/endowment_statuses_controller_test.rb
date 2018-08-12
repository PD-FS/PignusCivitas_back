require 'test_helper'

class EndowmentStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @endowment_status = endowment_statuses(:one)
  end

  test "should get index" do
    get endowment_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_endowment_status_url
    assert_response :success
  end

  test "should create endowment_status" do
    assert_difference('EndowmentStatus.count') do
      post endowment_statuses_url, params: { endowment_status: { description: @endowment_status.description, name: @endowment_status.name } }
    end

    assert_redirected_to endowment_status_url(EndowmentStatus.last)
  end

  test "should show endowment_status" do
    get endowment_status_url(@endowment_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_endowment_status_url(@endowment_status)
    assert_response :success
  end

  test "should update endowment_status" do
    patch endowment_status_url(@endowment_status), params: { endowment_status: { description: @endowment_status.description, name: @endowment_status.name } }
    assert_redirected_to endowment_status_url(@endowment_status)
  end

  test "should destroy endowment_status" do
    assert_difference('EndowmentStatus.count', -1) do
      delete endowment_status_url(@endowment_status)
    end

    assert_redirected_to endowment_statuses_url
  end
end
