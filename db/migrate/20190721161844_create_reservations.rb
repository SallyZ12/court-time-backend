class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :player_id
      t.integer :court_id
      t.integer :rate_id
      t.time :hour
      t.date :day

      t.timestamps
    end
  end
end
