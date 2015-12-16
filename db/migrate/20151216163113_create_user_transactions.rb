class CreateUserTransactions < ActiveRecord::Migration
  def change
    create_table :user_transactions do |t|
      t.integer :transaction_dollar_amount
      t.integer :issued_nav_shares
      t.references :user_account, index: true
      t.references :fund, index: true

      t.timestamps
    end
  end
end
