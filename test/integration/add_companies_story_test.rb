require "test_helper"

class AddCompaniesStoryTest < ActionDispatch::IntegrationTest
  test "company can be created" do
    # Fake a devise login
    user = users(:alex)
    login_as(user, scope: :user)

    # Go to the page
    visit(new_company_path)

    # Fill out the form
    fill_in("Name", with: "The Pink Pig")
    select("false", from: "Distributor?")

    # When we click the save expect Company.count to go up by 1
    assert_difference "Company.count" do
      # Click the save button
      click_on("Save")
    end

    # Get the most recent ID from the DB
    id = Company.last.id

    # Look for its css ID in the returned HTML
    within "tr#company_#{id}" do
      # Verify it's content
      assert page.has_content?("The Pink Pig")
    end

    # Diagnostic
    # save_and_open_page
  end

  # test "company can be created" do
  #   visit("/")
  #   fill_in("Email", with: "party@party.com")
  #   fill_in("Password", with: "password")
  #   click_on("Log in")
  #   assert page.has_content?("Log Out")
  # end
end
