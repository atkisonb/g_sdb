require 'test_helper'

class BankAccountsControllerTest < ActionController::TestCase
  setup do
    @bank_account = bank_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bank_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bank_account" do
    assert_difference('BankAccount.count') do
      post :create, bank_account: { bank_account_number: @bank_account.bank_account_number, bank_routing_number: @bank_account.bank_routing_number, user_id: @bank_account.user_id, verified_at: @bank_account.verified_at }
    end

    assert_redirected_to bank_account_path(assigns(:bank_account))
  end

  test "should show bank_account" do
    get :show, id: @bank_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bank_account
    assert_response :success
  end

  test "should update bank_account" do
    patch :update, id: @bank_account, bank_account: { bank_account_number: @bank_account.bank_account_number, bank_routing_number: @bank_account.bank_routing_number, user_id: @bank_account.user_id, verified_at: @bank_account.verified_at }
    assert_redirected_to bank_account_path(assigns(:bank_account))
  end

  test "should destroy bank_account" do
    assert_difference('BankAccount.count', -1) do
      delete :destroy, id: @bank_account
    end

    assert_redirected_to bank_accounts_path
  end
end
