require 'test_helper'

class MinistriesControllerTest < ActionController::TestCase
  setup do
    @ministry = ministries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ministries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ministry" do
    assert_difference('Ministry.count') do
      post :create, ministry: { name: @ministry.name }
    end

    assert_redirected_to ministry_path(assigns(:ministry))
  end

  test "should show ministry" do
    get :show, id: @ministry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ministry
    assert_response :success
  end

  test "should update ministry" do
    patch :update, id: @ministry, ministry: { name: @ministry.name }
    assert_redirected_to ministry_path(assigns(:ministry))
  end

  test "should destroy ministry" do
    assert_difference('Ministry.count', -1) do
      delete :destroy, id: @ministry
    end

    assert_redirected_to ministries_path
  end
end
