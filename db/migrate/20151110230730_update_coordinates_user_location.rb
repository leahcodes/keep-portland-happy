class UpdateCoordinatesUserLocation < ActiveRecord::Migration
  def change
    change_column_default(:users, :latitude, 45.523236)
    change_column_default(:users, :longitude, -122.681528)
  end
end
