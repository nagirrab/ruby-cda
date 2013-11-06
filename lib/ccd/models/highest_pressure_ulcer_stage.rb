module Ccd
  class HighestPressureUlcerStage < ::Cda::Observation
    include Virtus.model
    extend ::Ccd::Dsl
    #SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6 STATIC) (CONF:14726).
    constraint 'classCode', cardinality: '1..1', value: 'OBS'

    #SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood 2.16.840.1.113883.5.1001 STATIC) (CONF:14727).
    constraint 'moodCode', cardinality: '1..1', value: 'EVN'

    #SHALL contain exactly one [1..1] templateId (CONF:14728) such that it
    constraint 'templateId', cardinality: '1..1'

    #SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.77" (CONF:14729).
    constraint 'templateId.root', cardinality: '1..1', value: '2.16.840.1.113883.10.20.22.4.77'

    #SHALL contain at least one [1..*] id (CONF:14730).
    constraint 'id', cardinality: '1..*'

    #SHALL contain exactly one [1..1] code (CONF:14731).
    constraint 'code', cardinality: '1..1'

    #This code SHALL contain exactly one [1..1] @code="420905001" Highest Pressure Ulcer Stage (CodeSystem: SNOMED CT 2.16.840.1.113883.6.96 STATIC) (CONF:14732).
    constraint 'code.code', cardinality: '1..1', value: '420905001'

    #SHALL contain exactly one [1..1] value (CONF:14733).
    constraint 'value', cardinality: '1..1'

    Ccd.load_extension('highest_pressure_ulcer_stage.rb')
  end
end