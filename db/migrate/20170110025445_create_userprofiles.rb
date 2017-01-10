class CreateUserprofiles < ActiveRecord::Migration
  def change
    create_table :userprofiles do |t|
      t.integer :user_id

      t.timestamps

    end
  end
end
