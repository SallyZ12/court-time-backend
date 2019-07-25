class ChangeColumnNameRes < ActiveRecord::Migration[5.2]
  def change
    rename_column :reservations, :rate_id, :type
  end
end
