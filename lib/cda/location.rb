class Cda::Location < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :health_care_facility, Cda::HealthCareFacility, annotations: {:class=>"Cda::HealthCareFacility"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :type_code, Cda::ParticipationTargetLocation, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::ParticipationTargetLocation"}
end
