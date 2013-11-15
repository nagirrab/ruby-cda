class Cda::LanguageCommunication < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :language_code, Cda::CS, annotations: {:class=>"Cda::CS"}
  attribute :mode_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :proficiency_level_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :preference_ind, Cda::BL, annotations: {:class=>"Cda::BL"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::NullFlavor"}
end
