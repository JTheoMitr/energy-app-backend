class AddNameToEnergies < ActiveRecord::Migration[6.1]
  def change
    add_column :energies, :name, :string
  end
end
