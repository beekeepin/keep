class CreateBeeLogs < ActiveRecord::Migration
  def change
    create_table :bee_logs do |t|
      t.text :temperature
      t.float :humidity
      t.text :colony_name
      t.float :longitude
      t.float :latitude
      t.integer :status
      t.text :monitor_data

      t.timestamps null: false
    end
  end
end
