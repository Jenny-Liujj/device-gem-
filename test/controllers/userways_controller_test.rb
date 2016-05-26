require 'test_helper'

class UserwaysControllerTest < ActionController::TestCase
  setup do
    @userway = userways(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userways)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userway" do
    assert_difference('Userway.count') do
      post :create, userway: { name: @userway.name, password: @userway.password }
    end

    assert_redirected_to userway_path(assigns(:userway))
  end

  test "should show userway" do
    get :show, id: @userway
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userway
    assert_response :success
  end

  test "should update userway" do
    patch :update, id: @userway, userway: { name: @userway.name, password: @userway.password }
    assert_redirected_to userway_path(assigns(:userway))
  end

  test "should destroy userway" do
    assert_difference('Userway.count', -1) do
      delete :destroy, id: @userway
    end

    assert_redirected_to userways_path
  end
end
