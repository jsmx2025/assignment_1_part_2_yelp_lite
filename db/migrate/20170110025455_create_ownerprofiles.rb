class CreateOwnerprofiles < ActiveRecord::Migration
  def change
    create_table :ownerprofiles do |t|
      t.integer :owner_id

      t.timestamps

    end
  end
end
