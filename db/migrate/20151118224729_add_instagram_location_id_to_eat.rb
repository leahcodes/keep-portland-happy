class AddInstagramLocationIdToEat < ActiveRecord::Migration
  def change
    add_column :eats, :instagram_location_id, :string
  end
end
