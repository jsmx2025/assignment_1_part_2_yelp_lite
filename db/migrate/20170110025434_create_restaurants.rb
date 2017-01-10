class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :tag_id
      t.text :description
      t.string :address
      t.string :website
      t.string :cover_photo
      t.integer :owner_id

      t.timestamps

    end
  end
end
