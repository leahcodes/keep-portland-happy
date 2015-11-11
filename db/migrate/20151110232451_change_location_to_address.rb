class ChangeLocationToAddress < ActiveRecord::Migration
  def change
    rename_column :users, :location, :address
    change_column_default(:users, :latitude, nil)
    change_column_default(:users, :longitude, nil)
  end
end
