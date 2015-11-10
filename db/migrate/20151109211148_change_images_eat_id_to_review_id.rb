class ChangeImagesEatIdToReviewId < ActiveRecord::Migration
  def change
    rename_column :images, :eat_id, :review_id
  end
end
