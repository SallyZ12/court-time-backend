class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.integer :club_id
      t.string :description
      t.float :rate

      t.timestamps
    end
  end
end
