class Cda::ResponsibleParty < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :assigned_entity, Cda::AssignedEntity, annotations: {:class=>"Cda::AssignedEntity"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :type_code, Cda::ParticipationType, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::ParticipationType"}
end
