class Stock < ActiveRecord::Base
  has_many :fund_transactions
end
