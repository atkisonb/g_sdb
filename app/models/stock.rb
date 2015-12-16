class Stock < ActiveRecord::Base
  has_many :fund_transactions
  has_many :market_orders
end
