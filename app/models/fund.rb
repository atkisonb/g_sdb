class Fund < ActiveRecord::Base
  has_many :user_transactions
  has_many :fund_managements
end
