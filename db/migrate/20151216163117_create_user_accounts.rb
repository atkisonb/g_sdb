class CreateUserAccounts < ActiveRecord::Migration
  def change
    create_table :user_accounts do |t|
      t.references :user, index: true
      t.integer :account_type_id
      t.integer :user_account_number

      t.timestamps
    end
  end
end
