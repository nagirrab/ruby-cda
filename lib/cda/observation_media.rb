class Cda::ObservationMedia < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :language_code, Cda::CS, annotations: {:class=>"Cda::CS"}
  attribute :value, Cda::ED, annotations: {:class=>"Cda::ED"}
  attribute :subject, Cda::Subject, annotations: {:class=>"Cda::Subject"}
  attribute :specimen, Array[Cda::Specimen], annotations: {:multiple=>true, :class=>"Cda::Specimen"}
  attribute :performer, Array[Cda::Performer2], annotations: {:multiple=>true, :class=>"Cda::Performer2"}
  attribute :author, Array[Cda::Author], annotations: {:multiple=>true, :class=>"Cda::Author"}
  attribute :informant, Array[Cda::Informant12], annotations: {:multiple=>true, :class=>"Cda::Informant12"}
  attribute :participant, Array[Cda::Participant2], annotations: {:multiple=>true, :class=>"Cda::Participant2"}
  attribute :entry_relationship, Array[Cda::EntryRelationship], annotations: {:multiple=>true, :class=>"Cda::EntryRelationship"}
  attribute :reference, Array[Cda::Reference], annotations: {:multiple=>true, :class=>"Cda::Reference"}
  attribute :precondition, Array[Cda::Precondition], annotations: {:multiple=>true, :class=>"Cda::Precondition"}
  attribute :id, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:use=>:optional, :kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :class_code, Cda::ActClassObservation, annotations: {:use=>:required, :kind=>:attribute, :class=>"Cda::ActClassObservation"}
  attribute :mood_code, Cda::ActMood, annotations: {:use=>:required, :kind=>:attribute, :class=>"Cda::ActMood"}
end
