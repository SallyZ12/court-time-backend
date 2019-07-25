class ChangeColumnNameResType < ActiveRecord::Migration[5.2]
  def change
    rename_column :reservations, :type, :rate_type
  end
end
