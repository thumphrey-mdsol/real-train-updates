class CreateSubways < ActiveRecord::Migration[6.0]
  def change
    create_table :subways do |t|
      t.string :name
      t.string :color
      t.string :img

      t.timestamps
    end
  end
end
