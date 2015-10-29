class AddEatsUsersTable < ActiveRecord::Migration
  def change
    create_table :eats_users do |t|
      t.integer :user_id
      t.integer :eat_id

      t.timestamps
    end
  end
end
