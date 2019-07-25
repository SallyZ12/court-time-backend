class AddPrimeToCourts < ActiveRecord::Migration[5.2]
  def change
    add_column :courts, :prime, :string
  end
end
