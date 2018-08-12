require "application_system_test_case"

class SecurityCompaniesTest < ApplicationSystemTestCase
  setup do
    @security_company = security_companies(:one)
  end

  test "visiting the index" do
    visit security_companies_url
    assert_selector "h1", text: "Security Companies"
  end

  test "creating a Security company" do
    visit security_companies_url
    click_on "New Security Company"

    fill_in "Address", with: @security_company.address
    fill_in "Business Name", with: @security_company.business_name
    fill_in "Email", with: @security_company.email
    fill_in "Identification", with: @security_company.identification
    fill_in "Phone", with: @security_company.phone
    click_on "Create Security company"

    assert_text "Security company was successfully created"
    click_on "Back"
  end

  test "updating a Security company" do
    visit security_companies_url
    click_on "Edit", match: :first

    fill_in "Address", with: @security_company.address
    fill_in "Business Name", with: @security_company.business_name
    fill_in "Email", with: @security_company.email
    fill_in "Identification", with: @security_company.identification
    fill_in "Phone", with: @security_company.phone
    click_on "Update Security company"

    assert_text "Security company was successfully updated"
    click_on "Back"
  end

  test "destroying a Security company" do
    visit security_companies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Security company was successfully destroyed"
  end
end
