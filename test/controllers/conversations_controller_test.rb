require 'test_helper'

class ConversationsControllerTest < ActionController::TestCase

  setup do
    sign_in users(:alex)
  end
  
  test "new convo page" do
    response = get :new
    assert_response :success
  end

  test "show convo" do
    response = get :show, id: conversations(:call).id
    assert_response :success
  end

  test "create convo" do
    response = post :create, { conversation: { medium: "email", user_id: 2, person_id: 1 } }
    assert_response :success
  end

  test "update convo" do
    @convo = conversations(:call)
    response = patch :update, {
      id: @convo.id,
      conversation: {
        medium: "email"
      }
    }
    @convo.reload
    assert_equal "email", @convo.medium
    assert_response :redirect
  end

  test "can delete convo" do
    @convo = conversations(:email)
    @convo.save
    response = delete :destroy, { id: @convo.id }
    assert_response :redirect

    assert_raises ActiveRecord::RecordNotFound do
      @convo.reload
    end

  end
end
