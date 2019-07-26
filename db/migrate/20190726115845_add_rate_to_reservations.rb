class AddRateToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :rate, :integer
  end
end
