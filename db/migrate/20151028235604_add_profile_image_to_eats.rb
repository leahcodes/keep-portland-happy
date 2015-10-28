class AddProfileImageToEats < ActiveRecord::Migration
  def change
    add_column :eats, :profile_image_id, :string
  end
end
