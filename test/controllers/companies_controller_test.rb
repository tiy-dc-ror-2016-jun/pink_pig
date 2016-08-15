require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase

  setup do
    sign_in users(:alex)
  end

  
  test "should get new" do
    get :new
    assert_response :success
  end

end
