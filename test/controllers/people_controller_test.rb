require "test_helper"

class PeopleControllerTest < ActionController::TestCase

  setup do
    sign_in users(:alex)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    jon = people(:jon)
    get( :show, {id: jon.id })
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: 1
    assert_response :success
  end

  # test "create new person" do
  #   jon = Person.create(full_name: "jon", company_id: 2, comments: "idiot")
  #   assert_equal jon.full_name, "jon"
  # end

  test "should create a new person" do
    post :create, {user: {full_name: "jon", comments: "its a thing"}}
  end

  test "create person" do
    jon = Person.create(full_name: "jon",company_id: 2, comments: "idiot")
    assert_equal jon.full_name, "jon"
  end
end
