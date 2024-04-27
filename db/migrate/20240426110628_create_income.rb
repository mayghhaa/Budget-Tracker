class CreateIncome < ActiveRecord::Migration[7.1]
  def change
    create_table :incomes do |t|
      t.string :title
      t.integer :amount
      t.string :category
      t.text :description
      t.date :date
      t.timestamps
    end
  end
end
