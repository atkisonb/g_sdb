class MarketOrdersController < ApplicationController
  before_action :set_market_order, only: [:show, :edit, :update, :destroy]

  # GET /market_orders
  # GET /market_orders.json
  def index
    @market_orders = MarketOrder.all
  end

  # GET /market_orders/1
  # GET /market_orders/1.json
  def show
  end

  # GET /market_orders/new
  def new
    @market_order = MarketOrder.new
  end

  # GET /market_orders/1/edit
  def edit
  end

  # POST /market_orders
  # POST /market_orders.json
  def create
    @market_order = MarketOrder.new(market_order_params)

    respond_to do |format|
      if @market_order.save
        format.html { redirect_to @market_order, notice: 'Market order was successfully created.' }
        format.json { render :show, status: :created, location: @market_order }
      else
        format.html { render :new }
        format.json { render json: @market_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /market_orders/1
  # PATCH/PUT /market_orders/1.json
  def update
    respond_to do |format|
      if @market_order.update(market_order_params)
        format.html { redirect_to @market_order, notice: 'Market order was successfully updated.' }
        format.json { render :show, status: :ok, location: @market_order }
      else
        format.html { render :edit }
        format.json { render json: @market_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /market_orders/1
  # DELETE /market_orders/1.json
  def destroy
    @market_order.destroy
    respond_to do |format|
      format.html { redirect_to market_orders_url, notice: 'Market order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_market_order
      @market_order = MarketOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def market_order_params
      params.require(:market_order).permit(:stock_id, :bid, :ask, :exchange_order_number)
    end
end
