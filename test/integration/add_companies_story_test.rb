require 'test_helper'

class AddCompaniesStoryTest < ActionDispatch::IntegrationTest
  test "company can be created" do
    user = users(:alex)
    login_as(user, scope: :user)
    visit(new_company_path)
  end

  # test "company can be created" do
  #   visit("/")
  #   fill_in("Email", with: "party@party.com")
  #   fill_in("Password", with: "password")
  #   click_on("Log in")
  #   assert page.has_content?("Log Out")
  # end
end
