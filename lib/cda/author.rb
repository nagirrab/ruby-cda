class Cda::Author < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :function_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :time, Cda::TS, annotations: {:class=>"Cda::TS"}
  attribute :assigned_author, Cda::AssignedAuthor, annotations: {:class=>"Cda::AssignedAuthor"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :type_code, Cda::ParticipationType, annotations: {:kind=>:attribute, :class=>"Cda::ParticipationType"}
  attribute :context_control_code, Cda::ContextControl, annotations: {:kind=>:attribute, :class=>"Cda::ContextControl"}
end