class CreateBankAccounts < ActiveRecord::Migration
  def change
    create_table :bank_accounts do |t|
      t.references :user, index: true
      t.integer :bank_account_number
      t.integer :bank_routing_number
      t.date :verified_at

      t.timestamps
    end
  end
end
