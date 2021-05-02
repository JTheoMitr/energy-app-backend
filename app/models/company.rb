class Company < ApplicationRecord
  belongs_to :energy

  def capitalize
    self.name.upcase
  end

  def energyid
    self.energy_id
  end
end
