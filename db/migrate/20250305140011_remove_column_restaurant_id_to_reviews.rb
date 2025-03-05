class RemoveColumnRestaurantIdToReviews < ActiveRecord::Migration[7.1]
  def change
    remove_column :reviews, :restaurant_id
  end
end
