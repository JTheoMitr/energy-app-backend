class RemoveTypeFromEnergies < ActiveRecord::Migration[6.1]
  def change
    remove_column :energies, :type, :string
  end
end
