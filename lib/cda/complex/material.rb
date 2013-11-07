class Cda::Material < Cda::Base
  attribute :class_code, Cda::EntityClassManufacturedMaterial, annotations: {:kind=>:attribute, :class=>"Cda::EntityClassManufacturedMaterial"}
  attribute :code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :determiner_code, Cda::EntityDeterminerDetermined, annotations: {:kind=>:attribute, :class=>"Cda::EntityDeterminerDetermined"}
  attribute :lot_number_text, Cda::ST, annotations: {:class=>"Cda::ST"}
  attribute :name, Cda::EN, annotations: {:class=>"Cda::EN"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
