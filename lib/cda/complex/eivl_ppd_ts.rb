class Cda::EIVL_PPD_TS < Cda::SXCM_PPD_TS
  include Virtus.model
  attribute :event, Cda::EIVLEvent
  attribute :offset, Cda::IVL_PPD_PQ
end
