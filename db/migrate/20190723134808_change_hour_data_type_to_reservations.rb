class ChangeHourDataTypeToReservations < ActiveRecord::Migration[5.2]
  def change
    change_column :reservations, :hour, :string
  end
end
