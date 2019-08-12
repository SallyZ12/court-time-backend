class RemoveNumberCourtsFromClubs < ActiveRecord::Migration[5.2]
  def change
    remove_column :clubs, :number_courts, :integer
  end
end
