class FixAvatar < ActiveRecord::Migration
  def change
    remove_column :eats, :avatar, :string
  end
end
