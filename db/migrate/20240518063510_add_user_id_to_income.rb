class AddUserIdToIncome < ActiveRecord::Migration[7.1]
  def change
    add_column :incomes, :user_id, :int
  end
end
