class Cda::CE < Cda::CD
  attribute :original_text, Cda::ED, annotations: {:class=>"Cda::ED"}
  attribute :qualifier, Cda::CR, annotations: {:class=>"Cda::CR"}
  attribute :translation, Array[Cda::CD], annotations: {:multiple=>true, :class=>"Cda::CD"}
  attribute :code, Cda::Cs, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Cs"}
  attribute :code_system, Cda::Uid, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::Uid"}
  attribute :code_system_name, Cda::St, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::St"}
  attribute :code_system_version, Cda::St, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::St"}
  attribute :display_name, Cda::St, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::St"}
end
