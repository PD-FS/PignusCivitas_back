require 'test_helper'

class BlackListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @black_list = black_lists(:one)
  end

  test "should get index" do
    get black_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_black_list_url
    assert_response :success
  end

  test "should create black_list" do
    assert_difference('BlackList.count') do
      post black_lists_url, params: { black_list: { black_list_status_id: @black_list.black_list_status_id, date: @black_list.date, facts: @black_list.facts, notes: @black_list.notes, person_id: @black_list.person_id } }
    end

    assert_redirected_to black_list_url(BlackList.last)
  end

  test "should show black_list" do
    get black_list_url(@black_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_black_list_url(@black_list)
    assert_response :success
  end

  test "should update black_list" do
    patch black_list_url(@black_list), params: { black_list: { black_list_status_id: @black_list.black_list_status_id, date: @black_list.date, facts: @black_list.facts, notes: @black_list.notes, person_id: @black_list.person_id } }
    assert_redirected_to black_list_url(@black_list)
  end

  test "should destroy black_list" do
    assert_difference('BlackList.count', -1) do
      delete black_list_url(@black_list)
    end

    assert_redirected_to black_lists_url
  end
end
