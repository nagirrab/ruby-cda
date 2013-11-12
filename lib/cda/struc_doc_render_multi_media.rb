class Cda::StrucDocRenderMultiMedia < Cda::Base
  attribute :caption, Cda::StrucDocCaption, annotations: {:class=>"Cda::StrucDocCaption"}
  attribute :referenced_object, Array[String], annotations: {:kind=>:attribute, :class=>"Array[String]"}
  attribute :id, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :language, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute, :class=>"Array[String]"}
end