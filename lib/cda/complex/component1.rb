class Cda::Component1
  include Virtus.model
  attribute :encompassing_encounter, Cda::EncompassingEncounter
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute}
  attribute :realm_code, Array[Cda::CS]
  attribute :template_id, Array[Cda::II]
  attribute :type_code, Cda::ActRelationshipHasComponent, annotations: {:kind=>:attribute}
  attribute :type_id, Cda::InfrastructureRootTypeId
end
