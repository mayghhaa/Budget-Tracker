class CreateExpense < ActiveRecord::Migration[7.1]
  def change
    create_table :expenses do |t|
      t.string :title
      t.integer :amount
      t.string :category
      t.text :description
      t.date :date

      t.timestamps
    end
  end
end
