require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase

  setup do
    sign_in users(:alex)
  end

  
  test "should get index" do
    get :index
    assert_response :success
  end

end
