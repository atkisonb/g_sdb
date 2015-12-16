class Fund < ActiveRecord::Base
  has_many :user_transactions
end
