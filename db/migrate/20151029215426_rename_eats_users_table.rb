class RenameEatsUsersTable < ActiveRecord::Migration
  def change
    rename_table :eats_users, :favorites
  end
end
