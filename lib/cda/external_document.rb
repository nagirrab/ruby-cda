class Cda::ExternalDocument < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :code, Cda::CD, annotations: {:class=>"Cda::CD"}
  attribute :text, Cda::ED, annotations: {:class=>"Cda::ED"}
  attribute :set_id, Cda::II, annotations: {:class=>"Cda::II"}
  attribute :version_number, Cda::INT, annotations: {:class=>"Cda::INT"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :class_code, Cda::ActClassDocument, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::ActClassDocument"}
  attribute :mood_code, Cda::ActMood, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::ActMood"}
end
