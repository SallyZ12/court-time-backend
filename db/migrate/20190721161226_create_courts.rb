class CreateCourts < ActiveRecord::Migration[5.2]
  def change
    create_table :courts do |t|
      t.integer :club_id
      t.integer :court_number
      t.string :surface
      t.string :string

      t.timestamps
    end
  end
end
