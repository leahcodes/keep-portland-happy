class AddDistanceToTravelToEats < ActiveRecord::Migration
  def change
    add_column :users, :distance_to_travel, :float
  end
end
