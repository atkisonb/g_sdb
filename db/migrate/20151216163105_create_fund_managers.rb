class CreateFundManagers < ActiveRecord::Migration
  def change
    create_table :fund_managers do |t|
      t.string :first_name
      t.string :last_name
      t.text :about

      t.timestamps
    end
  end
end
