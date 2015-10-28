class UpdateImages < ActiveRecord::Migration
  def change
    rename_column :images, :name, :title
    add_column :images, :caption, :string
  end
end
