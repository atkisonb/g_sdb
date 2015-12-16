json.array!(@fund_transactions) do |fund_transaction|
  json.extract! fund_transaction, :id, :fund_id, :market_shares, :amount, :stock_id, :market_order_id
  json.url fund_transaction_url(fund_transaction, format: :json)
end
