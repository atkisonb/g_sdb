require 'test_helper'

class MarketOrdersControllerTest < ActionController::TestCase
  setup do
    @market_order = market_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:market_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create market_order" do
    assert_difference('MarketOrder.count') do
      post :create, market_order: { ask: @market_order.ask, bid: @market_order.bid, exchange_order_number: @market_order.exchange_order_number, stock_id: @market_order.stock_id }
    end

    assert_redirected_to market_order_path(assigns(:market_order))
  end

  test "should show market_order" do
    get :show, id: @market_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @market_order
    assert_response :success
  end

  test "should update market_order" do
    patch :update, id: @market_order, market_order: { ask: @market_order.ask, bid: @market_order.bid, exchange_order_number: @market_order.exchange_order_number, stock_id: @market_order.stock_id }
    assert_redirected_to market_order_path(assigns(:market_order))
  end

  test "should destroy market_order" do
    assert_difference('MarketOrder.count', -1) do
      delete :destroy, id: @market_order
    end

    assert_redirected_to market_orders_path
  end
end
