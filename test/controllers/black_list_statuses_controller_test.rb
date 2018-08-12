require 'test_helper'

class BlackListStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @black_list_status = black_list_statuses(:one)
  end

  test "should get index" do
    get black_list_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_black_list_status_url
    assert_response :success
  end

  test "should create black_list_status" do
    assert_difference('BlackListStatus.count') do
      post black_list_statuses_url, params: { black_list_status: { description: @black_list_status.description, name: @black_list_status.name } }
    end

    assert_redirected_to black_list_status_url(BlackListStatus.last)
  end

  test "should show black_list_status" do
    get black_list_status_url(@black_list_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_black_list_status_url(@black_list_status)
    assert_response :success
  end

  test "should update black_list_status" do
    patch black_list_status_url(@black_list_status), params: { black_list_status: { description: @black_list_status.description, name: @black_list_status.name } }
    assert_redirected_to black_list_status_url(@black_list_status)
  end

  test "should destroy black_list_status" do
    assert_difference('BlackListStatus.count', -1) do
      delete black_list_status_url(@black_list_status)
    end

    assert_redirected_to black_list_statuses_url
  end
end
