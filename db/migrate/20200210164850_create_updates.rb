class CreateUpdates < ActiveRecord::Migration[6.0]
  def change
    create_table :updates do |t|
      t.integer :user_id
      t.integer :subway_id
      t.boolean :delayed

      t.timestamps
    end
  end
end
