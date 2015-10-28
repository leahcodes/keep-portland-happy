class AddAvatarToEats < ActiveRecord::Migration
  def change
    add_column :eats, :avatar, :string
  end
end
