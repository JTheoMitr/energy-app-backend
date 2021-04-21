class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :location
      t.string :description
      t.integer :employee_count
      t.belongs_to :energy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
