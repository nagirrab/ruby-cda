class Cda::AdxpStreetName < Cda::ADXP
  include Virtus.model
  attribute :part_type, Cda::AddressPartType, annotations: {:kind=>:attribute}
end
