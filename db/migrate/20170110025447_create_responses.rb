class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.text :content
      t.integer :owner_id
      t.integer :review_id
      t.integer :restaurant_id

      t.timestamps

    end
  end
end
