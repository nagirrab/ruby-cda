class Cda::Place < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :name, Cda::EN, annotations: {:class=>"Cda::EN"}
  attribute :addr, Cda::AD, annotations: {:class=>"Cda::AD"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :class_code, Cda::EntityClassPlace, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::EntityClassPlace"}
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::EntityDeterminer"}
end
