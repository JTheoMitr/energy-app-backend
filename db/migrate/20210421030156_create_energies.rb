class CreateEnergies < ActiveRecord::Migration[6.1]
  def change
    create_table :energies do |t|
      t.string :type

      t.timestamps
    end
  end
end
