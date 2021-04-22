class Company < ApplicationRecord
  belongs_to :energy

  def capitalize
    self.name.upcase
  end
end
