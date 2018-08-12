require 'test_helper'

class LostObjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lost_object = lost_objects(:one)
  end

  test "should get index" do
    get lost_objects_url
    assert_response :success
  end

  test "should get new" do
    get new_lost_object_url
    assert_response :success
  end

  test "should create lost_object" do
    assert_difference('LostObject.count') do
      post lost_objects_url, params: { lost_object: { community_id: @lost_object.community_id, date: @lost_object.date, name: @lost_object.name, notes: @lost_object.notes, phone: @lost_object.phone, return_date: @lost_object.return_date, returned_to: @lost_object.returned_to } }
    end

    assert_redirected_to lost_object_url(LostObject.last)
  end

  test "should show lost_object" do
    get lost_object_url(@lost_object)
    assert_response :success
  end

  test "should get edit" do
    get edit_lost_object_url(@lost_object)
    assert_response :success
  end

  test "should update lost_object" do
    patch lost_object_url(@lost_object), params: { lost_object: { community_id: @lost_object.community_id, date: @lost_object.date, name: @lost_object.name, notes: @lost_object.notes, phone: @lost_object.phone, return_date: @lost_object.return_date, returned_to: @lost_object.returned_to } }
    assert_redirected_to lost_object_url(@lost_object)
  end

  test "should destroy lost_object" do
    assert_difference('LostObject.count', -1) do
      delete lost_object_url(@lost_object)
    end

    assert_redirected_to lost_objects_url
  end
end
