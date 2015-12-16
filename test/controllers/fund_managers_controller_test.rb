require 'test_helper'

class FundManagersControllerTest < ActionController::TestCase
  setup do
    @fund_manager = fund_managers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fund_managers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fund_manager" do
    assert_difference('FundManager.count') do
      post :create, fund_manager: { about: @fund_manager.about, first_name: @fund_manager.first_name, last_name: @fund_manager.last_name }
    end

    assert_redirected_to fund_manager_path(assigns(:fund_manager))
  end

  test "should show fund_manager" do
    get :show, id: @fund_manager
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fund_manager
    assert_response :success
  end

  test "should update fund_manager" do
    patch :update, id: @fund_manager, fund_manager: { about: @fund_manager.about, first_name: @fund_manager.first_name, last_name: @fund_manager.last_name }
    assert_redirected_to fund_manager_path(assigns(:fund_manager))
  end

  test "should destroy fund_manager" do
    assert_difference('FundManager.count', -1) do
      delete :destroy, id: @fund_manager
    end

    assert_redirected_to fund_managers_path
  end
end
