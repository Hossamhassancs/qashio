class AddIndexToMovieColAtReviewsTable < ActiveRecord::Migration[7.0]
  def change
    add_index :reviews, :movie
  end
end
