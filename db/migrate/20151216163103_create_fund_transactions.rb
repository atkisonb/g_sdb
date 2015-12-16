class CreateFundTransactions < ActiveRecord::Migration
  def change
    create_table :fund_transactions do |t|
      t.references :fund, index: true
      t.integer :market_shares
      t.integer :amount
      t.references :stock, index: true
      t.references :market_order, index: true

      t.timestamps
    end
  end
end
