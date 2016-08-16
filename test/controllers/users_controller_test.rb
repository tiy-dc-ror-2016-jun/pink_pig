require "test_helper"

class UsersControllerTest < ActionController::TestCase
  setup do
    sign_in users(:jenny)
  end

  test "the truth" do
    assert true
  end

  # def test_can_create_user
  # assert_difference "User.count", +1 do
  # post :create, {name: {email: "user1@user.com"}}
  # end
end
