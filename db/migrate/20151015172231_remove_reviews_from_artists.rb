class RemoveReviewsFromArtists < ActiveRecord::Migration
  def change
    remove_column :artists, :review, :string
  end
end
