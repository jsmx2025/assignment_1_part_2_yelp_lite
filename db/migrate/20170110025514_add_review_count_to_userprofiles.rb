class AddReviewCountToUserprofiles < ActiveRecord::Migration[5.0]
  def change
    add_column :userprofiles, :reviews_count, :integer
  end
end
