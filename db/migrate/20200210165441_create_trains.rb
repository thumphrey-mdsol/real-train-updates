class CreateTrains < ActiveRecord::Migration[6.0]
  def change
    create_table :trains do |t|
      t.integer :station_id
      t.integer :subway_id
      t.string :destination
      t.string :stop_time

      t.timestamps
    end
  end
end
