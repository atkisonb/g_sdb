class FundManagement < ActiveRecord::Base
  belongs_to :fund
  belongs_to :fund_manager
end
