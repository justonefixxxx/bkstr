class RenameRatingsRatingToRatingNumber < ActiveRecord::Migration
  def change
  	rename_column :ratings, :rating, :rating_number
  end
end
