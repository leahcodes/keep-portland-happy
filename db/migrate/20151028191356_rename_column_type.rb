class RenameColumnType < ActiveRecord::Migration
  def change
    rename_column :eats, :type, :category
  end
end
