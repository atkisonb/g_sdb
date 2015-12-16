class FundTransaction < ActiveRecord::Base
  belongs_to :fund
  belongs_to :stock
  belongs_to :market_order
end
