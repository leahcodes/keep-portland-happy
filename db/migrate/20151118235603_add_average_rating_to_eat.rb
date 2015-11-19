class AddAverageRatingToEat < ActiveRecord::Migration
  def change
    add_column :eats, :average_rating, :float, default: nil;
  end
end
