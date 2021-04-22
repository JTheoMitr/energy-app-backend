class EnergySerializer
  include FastJsonapi::ObjectSerializer

  has_many :companies

  attributes :name

end
