class CreateEats < ActiveRecord::Migration
  def change
    create_table :eats do |t|
      t.string :name
      t.string :category
      t.string :address
      t.string :phone
      t.string :website
      t.string :hours
      t.string :location
      t.string :neighborhood
      t.text   :menu

      t.timestamps
    end
  end
end
