class AddImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.string :url
      t.boolean :main
      t.integer :eat_id

      t.timestamps
    end
  end
end
