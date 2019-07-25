class ChangexTypeDataTypeToReservations < ActiveRecord::Migration[5.2]
  def change
    change_column :reservations, :type, :string
  end
end
