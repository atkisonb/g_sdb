json.array!(@market_orders) do |market_order|
  json.extract! market_order, :id, :stock_id, :bid, :ask, :exchange_order_number
  json.url market_order_url(market_order, format: :json)
end
