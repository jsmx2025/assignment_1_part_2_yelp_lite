class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.string :photos
      t.string :first_name
      t.string :last_initial
      t.integer :restaurant_id
      t.integer :userprofile_id

      t.timestamps

    end
  end
end
