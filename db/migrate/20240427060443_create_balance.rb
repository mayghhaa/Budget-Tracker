class CreateBalance < ActiveRecord::Migration[7.1]
  def change
    create_table :balances do |t|
      t.integer :balance
      t.timestamps
    end
  end
end
