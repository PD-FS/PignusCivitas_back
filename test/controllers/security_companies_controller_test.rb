require 'test_helper'

class SecurityCompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @security_company = security_companies(:one)
  end

  test "should get index" do
    get security_companies_url
    assert_response :success
  end

  test "should get new" do
    get new_security_company_url
    assert_response :success
  end

  test "should create security_company" do
    assert_difference('SecurityCompany.count') do
      post security_companies_url, params: { security_company: { address: @security_company.address, business_name: @security_company.business_name, email: @security_company.email, identification: @security_company.identification, phone: @security_company.phone } }
    end

    assert_redirected_to security_company_url(SecurityCompany.last)
  end

  test "should show security_company" do
    get security_company_url(@security_company)
    assert_response :success
  end

  test "should get edit" do
    get edit_security_company_url(@security_company)
    assert_response :success
  end

  test "should update security_company" do
    patch security_company_url(@security_company), params: { security_company: { address: @security_company.address, business_name: @security_company.business_name, email: @security_company.email, identification: @security_company.identification, phone: @security_company.phone } }
    assert_redirected_to security_company_url(@security_company)
  end

  test "should destroy security_company" do
    assert_difference('SecurityCompany.count', -1) do
      delete security_company_url(@security_company)
    end

    assert_redirected_to security_companies_url
  end
end
