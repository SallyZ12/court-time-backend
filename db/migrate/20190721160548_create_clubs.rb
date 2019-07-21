class CreateClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :clubs do |t|
      t.string :club_name
      t.string :location
      t.integer :number_courts

      t.timestamps
    end
  end
end
