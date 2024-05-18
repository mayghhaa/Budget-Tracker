class AddUserIdToExpense < ActiveRecord::Migration[7.1]
  def change
    add_column :expenses, :user_id, :int
  end
end
