class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :start_id
      t.integer :end_id
      t.datetime :departure
      t.integer :duration

      t.timestamps
    end
  end
end
