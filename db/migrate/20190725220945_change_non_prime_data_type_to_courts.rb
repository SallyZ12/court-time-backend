class ChangeNonPrimeDataTypeToCourts < ActiveRecord::Migration[5.2]
  def change
      change_column :courts, :non_prime, :integer
  end
end
