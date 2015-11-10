class AddReviewModel < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.integer :rating
      t.integer :user_id
      t.integer :eat_id

      t.timestamps
    end
  end
end
