class Cda::EnGiven < Cda::ENXP
  include Virtus.model
  attribute :part_type, Cda::EntityNamePartType, annotations: {:kind=>:attribute}
end
