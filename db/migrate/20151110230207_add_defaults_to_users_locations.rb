class AddDefaultsToUsersLocations < ActiveRecord::Migration
  def change
    remove_column :users, :latitude, :float
    remove_column :users, :longitude, :float

    add_column :users, :latitude, :float, :default => 45.5231158
    add_column :users, :longitude, :float, :default => -122.6835912
  end
end
