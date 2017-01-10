class AddRestaurantCountToTags < ActiveRecord::Migration[5.0]
  def change
    add_column :tags, :restaurants_count, :integer
  end
end
