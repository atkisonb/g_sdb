class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :stock_ticker
      t.string :stock_company
      t.string :stock_exchange

      t.timestamps
    end
  end
end
