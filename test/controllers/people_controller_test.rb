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
    jon = people(:jon)
    get :edit, id: jon.id
    assert_response :success
  end

  test "update person" do
    @person = people(:jon)
    response = patch :update, {id: @person.id, person: {title: "manager"}}
    @person.reload
    assert_equal "manager", @person.title
    assert_response :redirect
  end


  test "should create a new person" do
    post :create, {person: {full_name: "jon", comments: "its a thing"}}
  end

  test "create person" do
    jon = Person.create(full_name: "jon",company_id: 2, comments: "idiot")
    assert_equal jon.full_name, "jon"
  end

  test "delete person" do
    @person = people(:jon)
    response = delete :destroy, {id: @person.id}
    assert_response :redirect
    jon = Person.find_by(id: @person.id)
    assert_equal jon, nil
  end


end
