class CompanySerializer
  include FastJsonapi::ObjectSerializer

  belongs_to :energy

  attributes :name, :location, :description, :website, :capitalize, :energyid

  # attribute :name do |object|
  #   "#{object.name} Part 2"
  # end



end
