require 'test_helper'

class DashboardControllerTest < ActionController::TestCase

  setup do
    sign_in users(:alex)
  end
  
  test "should get show" do
    get :show
    assert_response :success
  end

end
