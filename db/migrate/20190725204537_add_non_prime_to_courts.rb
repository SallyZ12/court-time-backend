class AddNonPrimeToCourts < ActiveRecord::Migration[5.2]
  def change
    add_column :courts, :non_prime, :string
  end
end
