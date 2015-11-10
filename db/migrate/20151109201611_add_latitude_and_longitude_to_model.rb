class AddLatitudeAndLongitudeToModel < ActiveRecord::Migration
  def change
    add_column :eats, :latitude, :float
    add_column :eats, :longitude, :float
  end
end
