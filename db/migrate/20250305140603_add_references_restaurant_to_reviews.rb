class AddReferencesRestaurantToReviews < ActiveRecord::Migration[7.1]
  def change
    add_reference :reviews, :restaurant, foreign_key: true
  end
end
