class RenameColumnInCategory < ActiveRecord::Migration[7.1]
  def change
    rename_column :categories, :category, :cat
  end
end
