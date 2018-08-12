require 'test_helper'

class EndowmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @endowment = endowments(:one)
  end

  test "should get index" do
    get endowments_url
    assert_response :success
  end

  test "should get new" do
    get new_endowment_url
    assert_response :success
  end

  test "should create endowment" do
    assert_difference('Endowment.count') do
      post endowments_url, params: { endowment: { accountable: @endowment.accountable, contract_id: @endowment.contract_id, date: @endowment.date, endowment_status_id: @endowment.endowment_status_id, stock_name: @endowment.stock_name } }
    end

    assert_redirected_to endowment_url(Endowment.last)
  end

  test "should show endowment" do
    get endowment_url(@endowment)
    assert_response :success
  end

  test "should get edit" do
    get edit_endowment_url(@endowment)
    assert_response :success
  end

  test "should update endowment" do
    patch endowment_url(@endowment), params: { endowment: { accountable: @endowment.accountable, contract_id: @endowment.contract_id, date: @endowment.date, endowment_status_id: @endowment.endowment_status_id, stock_name: @endowment.stock_name } }
    assert_redirected_to endowment_url(@endowment)
  end

  test "should destroy endowment" do
    assert_difference('Endowment.count', -1) do
      delete endowment_url(@endowment)
    end

    assert_redirected_to endowments_url
  end
end
