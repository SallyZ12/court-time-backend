class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :reservations, :player_id, :user_id
  end
end
