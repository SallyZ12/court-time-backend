class ChangePrimeDataTypeToCourts < ActiveRecord::Migration[5.2]
  def change
    change_column :courts, :prime, :integer
  end
end
