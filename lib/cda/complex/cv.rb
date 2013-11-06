class Cda::CV < Cda::ANY
  include Virtus.model
  attribute :code, Cda::Cs, annotations: {:kind=>:attribute}
  attribute :code_system, Cda::Uid, annotations: {:kind=>:attribute}
  attribute :code_system_name, Cda::St, annotations: {:kind=>:attribute}
  attribute :code_system_version, Cda::St, annotations: {:kind=>:attribute}
  attribute :display_name, Cda::St, annotations: {:kind=>:attribute}
  attribute :original_text, Cda::ED
  attribute :translation, Cda::CD
end