class AddLocationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :location, :string, :default => "Powell's Books on Burnside"
  end
end
