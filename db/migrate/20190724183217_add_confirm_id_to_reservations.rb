class AddConfirmIdToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :confirmID, :string
  end
end
