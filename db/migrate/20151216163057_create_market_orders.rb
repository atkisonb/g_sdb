class CreateMarketOrders < ActiveRecord::Migration
  def change
    create_table :market_orders do |t|
      t.references :stock, index: true
      t.integer :bid
      t.integer :ask
      t.integer :exchange_order_number

      t.timestamps
    end
  end
end
