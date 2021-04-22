class CompanySerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :location, :description, :capitalize

  # attribute :name do |object|
  #   "#{object.name} Part 2"
  # end



end
