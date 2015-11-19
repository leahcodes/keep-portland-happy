class MakeImagesJoinTableForUsersEats < ActiveRecord::Migration
  def change
    remove_column :images, :main
    rename_column :images, :review_id, :eat_id
    add_column :images, :user_id, :integer
    rename_column :images, :url, :profile_image_id
  end
end
